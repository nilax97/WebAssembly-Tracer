# webassembly_tracer
Code to generate the x86 translation of the webassembly trace for any program

# Demo

```sh
$ bash build.sh
$ cd src_trace
bash run.sh _tracelines_ _file.wasm_
```

The output will be a `filename.gz`

# Details

In this assignment the main objective is to convert a HTML document to an equivalent LaTeX document. In pursuance of this objective, have written a HTML to LaTeX parser from scratch. The exact problem statement is given in [problem_statement.htm](problem_statement.pdf)

The 2 parts of this assignment were to generate the xv6 equivalent trace of a `.wasm` file (refer to [trace_report.pdf](trace_report.pdf)) and benchmark the performce of WebAssembly compared to C/C++ on different browsers (refer to [benchmark_report.pdf](benchmark_report.pdf))