#!/usr/bin/python

"""
A class which implement a user-defined LLDB command called 'monitor' which is equivalent to the 'monitor' command from GDB.
PinADX use the monitor mechanism for allowing a Pintool to add new debugger commands.
LLDB already support this GDB remote protocol using 'process plugin packet monitor', however the responses from such commands
are returns as bytes code (instead of textual).
This user-defined 'monitor' lldb command send the Pintool command to PinADX and print back the response in human readable
output  
"""

from __future__ import print_function 
import lldb
import subprocess
import re


class MonitorCommand:
    """
    A class which implement a user-defined LLDB command called 'monitor' which is equivalent to the 'monitor' command from GDB.
    PinADX use the monitor mechanism for allowing a Pintool to add new debugger commands.
    LLDB already support this GDB remote protocol using 'process plugin packet monitor', however the responses from such commands
    are returns as bytes code (instead of textual).
    This user-defined 'monitor' lldb command send the Pintool command to PinADX and print back the response in human readable
    output  
    """
    
    def __init__(self, debugger, session_dict):
        pass 
    def __call__(self, debugger, command, exe_ctx, result):
        """
        Sends a Pintool command to the debugger, prints its response in human readable output
        """

        lResult = lldb.SBCommandReturnObject()
        debugger.GetCommandInterpreter().HandleCommand("process plugin packet monitor " + command, lResult)
        result_str = lResult.GetOutput()
        #print result_str
        
        # Look for a string byte code response
        response = re.search(".*response: ([0-9A-Fa-f]+)", result_str)
        if (response):
            stripped = response.group(1)
            print(stripped.decode("hex"), file=result)
            return
        
        # Look for OK response (target has no string reply, but command was accepted by the tool
        response = re.search(".*response: (OK)", result_str)
        if (response):
            stripped = response.group(1)
            # Nothing printed as in gdb
            #print >> result, stripped
        else:
            # Got empty response, this means the tool doesn't recognize this command
            print("Target does not support this command.", file=result)

   
    def get_short_help(self):
        return "Sends a Pintool command to the debugger"
    def get_long_help(self):
        return " Sends a Pintool command to the debugger, prints its response in human readable output if such exist"
  
def __lldb_init_module (debugger, dict):
    debugger.HandleCommand('command script add -c monitor.MonitorCommand monitor')
  
    print('The "monitor" command has been set.')
