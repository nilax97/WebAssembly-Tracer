#!/bin/sh
wasabi 2mm_00.wasm
wasabi 3mm_00.wasm
wasabi atax_00.wasm
wasabi bicg_00.wasm
wasabi cholesky_00.wasm
wasabi doitgen_00.wasm
wasabi gemm_00.wasm
wasabi gemver_00.wasm
wasabi gesummv_00.wasm
wasabi mvt_00.wasm
wasabi symm_00.wasm
wasabi syr2k_00.wasm
wasabi syrk_00.wasm
wasabi trisolv_00.wasm
wasabi trmm_00.wasm
wasabi durbin_00.wasm
wasabi gramschmidt_00.wasm
wasabi lu_00.wasm
wasabi ludcmp_00.wasm
wasabi correlation_00.wasm
wasabi covariance_00.wasm
wasabi floyd-warshall_00.wasm
wasabi nussinov_00.wasm
wasabi deriche_00.wasm
wasabi adi_00.wasm
wasabi fdtd-2d_00.wasm
wasabi jacobi-1d_00.wasm
wasabi jacobi-2d_00.wasm
wasabi seidel-2d_00.wasm
wasabi heat-3d_00.wasm

cp out/* .

gsed -i '/<script async type="text\/javascript" src="2mm_00.js"><\/script>/a <script src="2mm_00.wasabi.js"></script>' 2mm_00.html
gsed -i '/<script async type="text\/javascript" src="3mm_00.js"><\/script>/a <script src="3mm_00.wasabi.js"></script>' 3mm_00.html
gsed -i '/<script async type="text\/javascript" src="atax_00.js"><\/script>/a <script src="atax_00.wasabi.js"></script>' atax_00.html
gsed -i '/<script async type="text\/javascript" src="bicg_00.js"><\/script>/a <script src="bicg_00.wasabi.js"></script>' bicg_00.html
gsed -i '/<script async type="text\/javascript" src="cholesky_00.js"><\/script>/a <script src="cholesky_00.wasabi.js"></script>' cholesky_00.html
gsed -i '/<script async type="text\/javascript" src="doitgen_00.js"><\/script>/a <script src="doitgen_00.wasabi.js"></script>' doitgen_00.html
gsed -i '/<script async type="text\/javascript" src="gemm_00.js"><\/script>/a <script src="gemm_00.wasabi.js"></script>' gemm_00.html
gsed -i '/<script async type="text\/javascript" src="gemver_00.js"><\/script>/a <script src="gemver_00.wasabi.js"></script>' gemver_00.html
gsed -i '/<script async type="text\/javascript" src="gesummv_00.js"><\/script>/a <script src="gesummv_00.wasabi.js"></script>' gesummv_00.html
gsed -i '/<script async type="text\/javascript" src="mvt_00.js"><\/script>/a <script src="mvt_00.wasabi.js"></script>' mvt_00.html
gsed -i '/<script async type="text\/javascript" src="symm_00.js"><\/script>/a <script src="symm_00.wasabi.js"></script>' symm_00.html
gsed -i '/<script async type="text\/javascript" src="syr2k_00.js"><\/script>/a <script src="syr2k_00.wasabi.js"></script>' syr2k_00.html
gsed -i '/<script async type="text\/javascript" src="syrk_00.js"><\/script>/a <script src="syrk_00.wasabi.js"></script>' syrk_00.html
gsed -i '/<script async type="text\/javascript" src="trisolv_00.js"><\/script>/a <script src="trisolv_00.wasabi.js"></script>' trisolv_00.html
gsed -i '/<script async type="text\/javascript" src="trmm_00.js"><\/script>/a <script src="trmm_00.wasabi.js"></script>' trmm_00.html
gsed -i '/<script async type="text\/javascript" src="durbin_00.js"><\/script>/a <script src="durbin_00.wasabi.js"></script>' durbin_00.html
gsed -i '/<script async type="text\/javascript" src="gramschmidt_00.js"><\/script>/a <script src="gramschmidt_00.wasabi.js"></script>' gramschmidt_00.html
gsed -i '/<script async type="text\/javascript" src="lu_00.js"><\/script>/a <script src="lu_00.wasabi.js"></script>' lu_00.html
gsed -i '/<script async type="text\/javascript" src="ludcmp_00.js"><\/script>/a <script src="ludcmp_00.wasabi.js"></script>' ludcmp_00.html
gsed -i '/<script async type="text\/javascript" src="correlation_00.js"><\/script>/a <script src="correlation_00.wasabi.js"></script>' correlation_00.html
gsed -i '/<script async type="text\/javascript" src="covariance_00.js"><\/script>/a <script src="covariance_00.wasabi.js"></script>' covariance_00.html
gsed -i '/<script async type="text\/javascript" src="floyd-warshall_00.js"><\/script>/a <script src="floyd-warshall_00.wasabi.js"></script>' floyd-warshall_00.html
gsed -i '/<script async type="text\/javascript" src="nussinov_00.js"><\/script>/a <script src="nussinov_00.wasabi.js"></script>' nussinov_00.html
gsed -i '/<script async type="text\/javascript" src="deriche_00.js"><\/script>/a <script src="deriche_00.wasabi.js"></script>' deriche_00.html
gsed -i '/<script async type="text\/javascript" src="adi_00.js"><\/script>/a <script src="adi_00.wasabi.js"></script>' adi_00.html
gsed -i '/<script async type="text\/javascript" src="fdtd-2d_00.js"><\/script>/a <script src="fdtd-2d_00.wasabi.js"></script>' fdtd-2d_00.html
gsed -i '/<script async type="text\/javascript" src="jacobi-1d_00.js"><\/script>/a <script src="jacobi-1d_00.wasabi.js"></script>' jacobi-1d_00.html
gsed -i '/<script async type="text\/javascript" src="jacobi-2d_00.js"><\/script>/a <script src="jacobi-2d_00.wasabi.js"></script>' jacobi-2d_00.html
gsed -i '/<script async type="text\/javascript" src="seidel-2d_00.js"><\/script>/a <script src="seidel-2d_00.wasabi.js"></script>' seidel-2d_00.html
gsed -i '/<script async type="text\/javascript" src="heat-3d_00.js"><\/script>/a <script src="heat-3d_00.wasabi.js"></script>' heat-3d_00.html

gsed -i '/<script src="2mm_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' 2mm_00.html
gsed -i '/<script src="3mm_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' 3mm_00.html
gsed -i '/<script src="atax_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' atax_00.html
gsed -i '/<script src="bicg_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' bicg_00.html
gsed -i '/<script src="cholesky_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' cholesky_00.html
gsed -i '/<script src="doitgen_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' doitgen_00.html
gsed -i '/<script src="gemm_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' gemm_00.html
gsed -i '/<script src="gemver_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' gemver_00.html
gsed -i '/<script src="gesummv_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' gesummv_00.html
gsed -i '/<script src="mvt_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' mvt_00.html
gsed -i '/<script src="symm_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' symm_00.html
gsed -i '/<script src="syr2k_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' syr2k_00.html
gsed -i '/<script src="syrk_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' syrk_00.html
gsed -i '/<script src="trisolv_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' trisolv_00.html
gsed -i '/<script src="trmm_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' trmm_00.html
gsed -i '/<script src="durbin_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' durbin_00.html
gsed -i '/<script src="gramschmidt_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' gramschmidt_00.html
gsed -i '/<script src="lu_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' lu_00.html
gsed -i '/<script src="ludcmp_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' ludcmp_00.html
gsed -i '/<script src="correlation_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' correlation_00.html
gsed -i '/<script src="covariance_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' covariance_00.html
gsed -i '/<script src="floyd-warshall_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' floyd-warshall_00.html
gsed -i '/<script src="nussinov_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' nussinov_00.html
gsed -i '/<script src="deriche_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' deriche_00.html
gsed -i '/<script src="adi_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' adi_00.html
gsed -i '/<script src="fdtd-2d_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' fdtd-2d_00.html
gsed -i '/<script src="jacobi-1d_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' jacobi-1d_00.html
gsed -i '/<script src="jacobi-2d_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' jacobi-2d_00.html
gsed -i '/<script src="seidel-2d_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' seidel-2d_00.html
gsed -i '/<script src="heat-3d_00.wasabi.js"><\/script>/a <script src="log-all.js"></script>' heat-3d_00.html
