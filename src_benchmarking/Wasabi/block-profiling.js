    // begin({func, instr}, type)
    // {
    //     counts[func] = counts[func] || [];
    //     counts[func][instr] = (counts[func][instr] || 0)+1;
    // },

 // TODO rename to instruction-mix or so, counting sounds like just counting the total number of instructions

const counts = {};
const fun_counts = [];

Wasabi.analysisResult = function () {
    const keysSorted = Object.keys(counts).sort(function(a,b){return counts[b]-counts[a]});
    for (const key of keysSorted) {
        console.log(key, "\t", counts[key]);
    }
};

function incInstr(instr) {
    counts[instr] = (counts[instr] || 0) + 1;
}

function hotCode(func, instr, type) {
    fun_counts[func] = fun_counts[func] || [];
    fun_counts[func][instr] = fun_counts[func][instr] || { count: 0, type };
    fun_counts[func][instr].count++;
}

Wasabi.analysis = {

    start(location)
    {
        incInstr("dummy");
    },
    nop(location)
    {
        incInstr("dummy");
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
        incInstr("dummy");
    },
    br_if(location, conditionalTarget, condition)
    {
        incInstr("dummy");
    },
    br_table(location, table, defaultTarget, tableIdx)
    {
        incInstr("dummy");
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
        incInstr("dummy");
    },
    select(location, cond, first, second)
    {
        incInstr("dummy");
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
    },
    const_(location, op, value)
    {
        incInstr("dummy");
    },
    unary(location, op, input, result)
    {
        incInstr("dummy");
    },
    binary(location, op, first, second, result)
    {
        incInstr("dummy");
    },
    load(location, op, memarg, value)
    {
        incInstr("dummy");
    },
    store(location, op, memarg, value)
    {
        incInstr("dummy");
    },
    memory_size(location, currentSizePages)
    {
        incInstr("dummy");
    },
    memory_grow(location, byPages, previousSizePages)
    {
        incInstr("dummy");
    },
    local(location, op, localIndex, value)
    {
        incInstr("dummy");
    },
    global(location, op, globalIndex, value) 
    {
        incInstr("dummy");
    },
};