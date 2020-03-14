
    const counts = {};
    const total_counts = {};
    const max_value = AANG_LINE_VALUE;
    const page_size = AANG_BLOCK_SIZE;
    function incInstr(instr) {
        total_counts["Total"] = (total_counts["Total"] || 0) + 1;
        counts[total_counts["Total"]%page_size] = JSON.stringify(instr,null,2);
        if(total_counts["Total"] % page_size == 0 && total_counts["Total"]<(max_value + page_size))
        {
            var http = false;
            http = new XMLHttpRequest();
            http.onreadystatechange = function() {//Call a function when the state changes.
            if(http.readyState == 4) {
                console.log(http.responseText);
            }
        }       
            http.open('post', "", true);


        http.send(JSON.stringify(counts,null,2));
        }
        if(total_counts["Total"]>(max_value + page_size))
        {
            exit(0);
        }
    }
    
    Wasabi.analysis = {
    
        start(location)
        {
            incInstr(["start",location]);
        },
        nop(location)
        {
            incInstr(["nop", location]);
        },
        unreachable(location)
        {
            incInstr(["unreachable",location]);
        },
        if_(location, condition)
        {
            incInstr(["if_",location, condition]);
        },
        br(location, target)
        {
            incInstr(["br",location, target]);
        },
        br_if(location, conditionalTarget, condition)
        {
            incInstr(["br_if",location, conditionalTarget, condition]);
        },
        br_table(location, table, defaultTarget, tableIdx)
        {
            incInstr(["br_table",location, table, defaultTarget, tableIdx]);
        },
        begin(location, type)
        {
            incInstr(["begin",location, type]);
        },
        end(location, type, beginLocation, ifLocation)
        {
            incInstr(["end",location, type, beginLocation, ifLocation]);
        },
        drop(location, value)
        {
            incInstr(["drop",location, value]);
        },
        select(location, cond, first, second)
        {
            incInstr(["select",location, cond, first, second]);
        },
        call_pre(location, targetFunc, args, indirectTableIdx)
        {
            incInstr(["call_pre",location, targetFunc, args, indirectTableIdx]);
        },
        call_post(location, values)
        {
            incInstr(["call_post",location, values]);
        },
        return_(location, values)
        {
            incInstr(["return_",location, values]);
        },
        const_(location, op, value)
        {
            incInstr(["const_",location, op, value]);
        },
        unary(location, op, input, result)
        {
            incInstr(["unary",location, op, input, result]);
        },
        binary(location, op, first, second, result)
        {
            incInstr(["binary",location, op, first, second, result]);
        },
        load(location, op, memarg, value)
        {
            incInstr(["load",location, op, memarg, value]);
        },
        store(location, op, memarg, value)
        {
            incInstr(["store",location, op, memarg, value]);
        },
        memory_size(location, currentSizePages)
        {
            incInstr(["memory_size",location, currentSizePages]);
        },
        memory_grow(location, byPages, previousSizePages)
        {
            incInstr(["memory_grow",location, byPages, previousSizePages]);
        },
        local(location, op, localIndex, value)
        {
            incInstr(["local",location, op, localIndex, value]);
        },
        global(location, op, globalIndex, value) 
        {
            incInstr(["global",location, op, globalIndex, value]);
        },
    };