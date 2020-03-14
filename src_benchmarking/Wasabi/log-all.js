 
    const counts = {};
    const total_counts = {};
    const fun_counts = [];
    
    function incInstr(instr) {
        counts[instr] = (counts[instr] || 0) + 1;
        total_counts["Total"] = (total_counts["Total"] || 0) + 1;
    }
    
    function hotCode(func, instr, type) {
        fun_counts[func] = fun_counts[func] || { count: 0, type };
        fun_counts[func].count++;
    }

    // function print_values() {
    //     console.clear();
    //     var myJSON = JSON.stringify(counts);
    //     document.getElementById('output').value = "COUNTS : " + myJSON + "\n";
    //     console.log(counts);
    //     var myJSON = JSON.stringify(total_counts);
    //     document.getElementById('output').value += "TOTAL COUNTS : " + myJSON + "\n";
    //     console.log(total_counts);
    //     var myJSON = JSON.stringify(fun_counts);
    //     document.getElementById('output').value += "FUNCTION COUNTS : " + myJSON + "\n";
    //     console.log(fun_counts);

    // }
    
    Wasabi.analysis = {
    
        start(location)
        {
            incInstr("dummy");
        },
        nop(location)
        {
            incInstr("nop");
        },
        unreachable(location)
        {
            incInstr("dummy");
        },
        if_(location, condition)
        {
            incInstr("dummy");
        },
        br(location, target)
        {
            incInstr("branch");
        },
        br_if(location, conditionalTarget, condition)
        {
            incInstr("branch");
        },
        br_table(location, table, defaultTarget, tableIdx)
        {
            incInstr("branch");
        },
        begin({func, instr}, type)
        {
            incInstr("dummy");
            hotCode(func,instr,type);
        },
        end(location, type, beginLocation, ifLocation)
        {
            incInstr("dummy");
        },
        drop(location, value)
        {
            incInstr("stack");
        },
        select(location, cond, first, second)
        {
            incInstr("stack");
        },
        call_pre(location, targetFunc, args, indirectTableIdx)
        {
            incInstr("dummy");
        },
        call_post(location, values)
        {
            incInstr("dummy");
        },
        return_(location, values)
        {
            incInstr("dummy");
            // print_values();
        },
        const_(location, op, value)
        {
            incInstr("stack");
        },
        unary(location, op, input, result)
        {
            incInstr(op);
        },
        binary(location, op, first, second, result)
        {
            incInstr(op);
        },
        load(location, op, memarg, value)
        {
            incInstr("load");
        },
        store(location, op, memarg, value)
        {
            incInstr("store");
        },
        memory_size(location, currentSizePages)
        {
            incInstr("dummy");
        },
        memory_grow(location, byPages, previousSizePages)
        {
            incInstr("register");
        },
        local(location, op, localIndex, value)
        {
            incInstr("register");
        },
        global(location, op, globalIndex, value) 
        {
            incInstr("register");
        },
    };