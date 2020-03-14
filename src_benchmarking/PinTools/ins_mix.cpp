/*
 * Copyright 2002-2019 Intel Corporation.
 * 
 * This software is provided to you as Sample Source Code as defined in the accompanying
 * End User License Agreement for the Intel(R) Software Development Products ("Agreement")
 * section 1.L.
 * 
 * This software and the related documents are provided as is, with no express or implied
 * warranties, other than those that are expressly stated in the License.
 */

#include <iostream>
#include <fstream>
#include <string>
#include "pin.H"
using std::cerr;
using std::ofstream;
using std::ios;
using std::string;
using std::endl;

using namespace std;
ofstream OutFile;

// The running count of instructions is kept here
// make it static to help the compiler optimize docount
// static UINT64 icount = 0;
static UINT64 nop = 0;
static UINT64 load = 0;
static UINT64 store = 0;
static UINT64 branch = 0;
static UINT64 _int = 0;
static UINT64 _float = 0;
static UINT64 _register = 0;
// static UINT64 nop = 0;
// static UINT64 nop = 0;

// This function is called before every instruction is executed
// VOID docount() {        
//     icount++; 
// }
    

VOID cnop() { 
    nop++;
}
VOID cint() { 
    _int++;
}
VOID cfloat() { 
    _float++;
}
VOID cregister() { 
    _register++;
}
VOID cbranch() { 
    branch++;
}
VOID cload() { 
    load++;
}
VOID cstore() { 
    store++;
}
// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    // Insert a call to docount before every instruction, no arguments are passed
    if( INS_IsNop(ins))
    {
        // OutFile << INS_Disassemble(ins) << endl;
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cnop, IARG_END);

    }
    if (INS_IsBranch (ins))
    {
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cbranch, IARG_END);
        
    }
    if (INS_IsMov(ins) && INS_OperandIsReg(ins, 0) &&( INS_OperandIsReg(ins, 1) || INS_OperandIsImmediate(ins, 1)) )
    {
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cregister, IARG_END);
    }
    // // else
    // // {
    // //     INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)docount, IARG_END);

    // // }
    // // INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)docount, IARG_END);

    // // UINT32 memOperands = INS_MemoryOperandCount(ins);
    if (INS_MemoryOperandIsRead(ins, 0))
        {
            INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cload, IARG_END);

        }

         // In that case we instrument it once for read and once for write.
    if (INS_MemoryOperandIsWritten(ins, 0))
        {
            INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cstore, IARG_END);
        }
// XED_CLASS_X87_ALU for float arithmetic and XED_CLASS_BINARY
    if (INS_Category (ins) == XED_CATEGORY_BINARY)
    {
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cint, IARG_END);
    }
    if (INS_Category (ins) == XED_CATEGORY_X87_ALU)
    {
        INS_InsertPredicatedCall(ins, IPOINT_BEFORE, (AFUNPTR)cfloat, IARG_END);
    }
}


KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "ins_mix.out", "specify output file name");

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    // Write to a file since cout and cerr maybe closed by the application
    OutFile.setf(ios::showbase);
    // OutFile << "Count " << icount << endl;
    OutFile << "nop_count " << nop << endl;
    OutFile << "branch_count " << branch << endl;
    OutFile << "register_count " << _register << endl;
    OutFile << "load_count " << load << endl;
    OutFile << "store_count " << store << endl;
    OutFile << "int_count " << _int << endl;
    OutFile << "float_count " << _float << endl;
    OutFile.close();
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool counts the number of dynamic instructions executed" << endl;
    cerr << endl << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */
/*   argc, argv are the entire command line: pin -t <toolname> -- ...    */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    OutFile.open(KnobOutputFile.Value().c_str());

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
