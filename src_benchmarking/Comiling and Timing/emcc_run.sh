#!/bin/sh -x
wasabi 2mm_time_00.wasm
wasabi 3mm_time_00.wasm
wasabi atax_time_00.wasm
wasabi bicg_time_00.wasm
wasabi cholesky_time_00.wasm
wasabi doitgen_time_00.wasm
wasabi gemm_time_00.wasm
wasabi gemver_time_00.wasm
wasabi gesummv_time_00.wasm
wasabi mvt_time_00.wasm
wasabi symm_time_00.wasm
wasabi syr2k_time_00.wasm
wasabi syrk_time_00.wasm
wasabi trisolv_time_00.wasm
wasabi trmm_time_00.wasm
wasabi durbin_time_00.wasm
wasabi gramschmidt_time_00.wasm
wasabi lu_time_00.wasm
wasabi ludcmp_time_00.wasm
wasabi correlation_time_00.wasm
wasabi covariance_time_00.wasm
wasabi floyd-warshall_time_00.wasm
wasabi nussinov_time_00.wasm
wasabi deriche_time_00.wasm
wasabi adi_time_00.wasm
wasabi fdtd-2d_time_00.wasm
wasabi jacobi-1d_time_00.wasm
wasabi jacobi-2d_time_00.wasm
wasabi seidel-2d_time_00.wasm
wasabi heat-3d_time_00.wasm
wasabi 2mm_time_01.wasm
wasabi 3mm_time_01.wasm
wasabi atax_time_01.wasm
wasabi bicg_time_01.wasm
wasabi cholesky_time_01.wasm
wasabi doitgen_time_01.wasm
wasabi gemm_time_01.wasm
wasabi gemver_time_01.wasm
wasabi gesummv_time_01.wasm
wasabi mvt_time_01.wasm
wasabi symm_time_01.wasm
wasabi syr2k_time_01.wasm
wasabi syrk_time_01.wasm
wasabi trisolv_time_01.wasm
wasabi trmm_time_01.wasm
wasabi durbin_time_01.wasm
wasabi gramschmidt_time_01.wasm
wasabi lu_time_01.wasm
wasabi ludcmp_time_01.wasm
wasabi correlation_time_01.wasm
wasabi covariance_time_01.wasm
wasabi floyd-warshall_time_01.wasm
wasabi nussinov_time_01.wasm
wasabi deriche_time_01.wasm
wasabi adi_time_01.wasm
wasabi fdtd-2d_time_01.wasm
wasabi jacobi-1d_time_01.wasm
wasabi jacobi-2d_time_01.wasm
wasabi seidel-2d_time_01.wasm
wasabi heat-3d_time_01.wasm
wasabi 2mm_time_02.wasm
wasabi 3mm_time_02.wasm
wasabi atax_time_02.wasm
wasabi bicg_time_02.wasm
wasabi cholesky_time_02.wasm
wasabi doitgen_time_02.wasm
wasabi gemm_time_02.wasm
wasabi gemver_time_02.wasm
wasabi gesummv_time_02.wasm
wasabi mvt_time_02.wasm
wasabi symm_time_02.wasm
wasabi syr2k_time_02.wasm
wasabi syrk_time_02.wasm
wasabi trisolv_time_02.wasm
wasabi trmm_time_02.wasm
wasabi durbin_time_02.wasm
wasabi gramschmidt_time_02.wasm
wasabi lu_time_02.wasm
wasabi ludcmp_time_02.wasm
wasabi correlation_time_02.wasm
wasabi covariance_time_02.wasm
wasabi floyd-warshall_time_02.wasm
wasabi nussinov_time_02.wasm
wasabi deriche_time_02.wasm
wasabi adi_time_02.wasm
wasabi fdtd-2d_time_02.wasm
wasabi jacobi-1d_time_02.wasm
wasabi jacobi-2d_time_02.wasm
wasabi seidel-2d_time_02.wasm
wasabi heat-3d_time_02.wasm
wasabi 2mm_time_03.wasm
wasabi 3mm_time_03.wasm
wasabi atax_time_03.wasm
wasabi bicg_time_03.wasm
wasabi cholesky_time_03.wasm
wasabi doitgen_time_03.wasm
wasabi gemm_time_03.wasm
wasabi gemver_time_03.wasm
wasabi gesummv_time_03.wasm
wasabi mvt_time_03.wasm
wasabi symm_time_03.wasm
wasabi syr2k_time_03.wasm
wasabi syrk_time_03.wasm
wasabi trisolv_time_03.wasm
wasabi trmm_time_03.wasm
wasabi durbin_time_03.wasm
wasabi gramschmidt_time_03.wasm
wasabi lu_time_03.wasm
wasabi ludcmp_time_03.wasm
wasabi correlation_time_03.wasm
wasabi covariance_time_03.wasm
wasabi floyd-warshall_time_03.wasm
wasabi nussinov_time_03.wasm
wasabi deriche_time_03.wasm
wasabi adi_time_03.wasm
wasabi fdtd-2d_time_03.wasm
wasabi jacobi-1d_time_03.wasm
wasabi jacobi-2d_time_03.wasm
wasabi seidel-2d_time_03.wasm
wasabi heat-3d_time_03.wasm

cp out/* .


gsed -i '/<script async type="text\/javascript" src="2mm_time_00.js"><\/script>/a <script src="2mm_time_00.wasabi.js"></script>' 2mm_time_00.html
gsed -i '/<script async type="text\/javascript" src="3mm_time_00.js"><\/script>/a <script src="3mm_time_00.wasabi.js"></script>' 3mm_time_00.html
gsed -i '/<script async type="text\/javascript" src="atax_time_00.js"><\/script>/a <script src="atax_time_00.wasabi.js"></script>' atax_time_00.html
gsed -i '/<script async type="text\/javascript" src="bicg_time_00.js"><\/script>/a <script src="bicg_time_00.wasabi.js"></script>' bicg_time_00.html
gsed -i '/<script async type="text\/javascript" src="cholesky_time_00.js"><\/script>/a <script src="cholesky_time_00.wasabi.js"></script>' cholesky_time_00.html
gsed -i '/<script async type="text\/javascript" src="doitgen_time_00.js"><\/script>/a <script src="doitgen_time_00.wasabi.js"></script>' doitgen_time_00.html
gsed -i '/<script async type="text\/javascript" src="gemm_time_00.js"><\/script>/a <script src="gemm_time_00.wasabi.js"></script>' gemm_time_00.html
gsed -i '/<script async type="text\/javascript" src="gemver_time_00.js"><\/script>/a <script src="gemver_time_00.wasabi.js"></script>' gemver_time_00.html
gsed -i '/<script async type="text\/javascript" src="gesummv_time_00.js"><\/script>/a <script src="gesummv_time_00.wasabi.js"></script>' gesummv_time_00.html
gsed -i '/<script async type="text\/javascript" src="mvt_time_00.js"><\/script>/a <script src="mvt_time_00.wasabi.js"></script>' mvt_time_00.html
gsed -i '/<script async type="text\/javascript" src="symm_time_00.js"><\/script>/a <script src="symm_time_00.wasabi.js"></script>' symm_time_00.html
gsed -i '/<script async type="text\/javascript" src="syr2k_time_00.js"><\/script>/a <script src="syr2k_time_00.wasabi.js"></script>' syr2k_time_00.html
gsed -i '/<script async type="text\/javascript" src="syrk_time_00.js"><\/script>/a <script src="syrk_time_00.wasabi.js"></script>' syrk_time_00.html
gsed -i '/<script async type="text\/javascript" src="trisolv_time_00.js"><\/script>/a <script src="trisolv_time_00.wasabi.js"></script>' trisolv_time_00.html
gsed -i '/<script async type="text\/javascript" src="trmm_time_00.js"><\/script>/a <script src="trmm_time_00.wasabi.js"></script>' trmm_time_00.html
gsed -i '/<script async type="text\/javascript" src="durbin_time_00.js"><\/script>/a <script src="durbin_time_00.wasabi.js"></script>' durbin_time_00.html
gsed -i '/<script async type="text\/javascript" src="gramschmidt_time_00.js"><\/script>/a <script src="gramschmidt_time_00.wasabi.js"></script>' gramschmidt_time_00.html
gsed -i '/<script async type="text\/javascript" src="lu_time_00.js"><\/script>/a <script src="lu_time_00.wasabi.js"></script>' lu_time_00.html
gsed -i '/<script async type="text\/javascript" src="ludcmp_time_00.js"><\/script>/a <script src="ludcmp_time_00.wasabi.js"></script>' ludcmp_time_00.html
gsed -i '/<script async type="text\/javascript" src="correlation_time_00.js"><\/script>/a <script src="correlation_time_00.wasabi.js"></script>' correlation_time_00.html
gsed -i '/<script async type="text\/javascript" src="covariance_time_00.js"><\/script>/a <script src="covariance_time_00.wasabi.js"></script>' covariance_time_00.html
gsed -i '/<script async type="text\/javascript" src="floyd-warshall_time_00.js"><\/script>/a <script src="floyd-warshall_time_00.wasabi.js"></script>' floyd-warshall_time_00.html
gsed -i '/<script async type="text\/javascript" src="nussinov_time_00.js"><\/script>/a <script src="nussinov_time_00.wasabi.js"></script>' nussinov_time_00.html
gsed -i '/<script async type="text\/javascript" src="deriche_time_00.js"><\/script>/a <script src="deriche_time_00.wasabi.js"></script>' deriche_time_00.html
gsed -i '/<script async type="text\/javascript" src="adi_time_00.js"><\/script>/a <script src="adi_time_00.wasabi.js"></script>' adi_time_00.html
gsed -i '/<script async type="text\/javascript" src="fdtd-2d_time_00.js"><\/script>/a <script src="fdtd-2d_time_00.wasabi.js"></script>' fdtd-2d_time_00.html
gsed -i '/<script async type="text\/javascript" src="jacobi-1d_time_00.js"><\/script>/a <script src="jacobi-1d_time_00.wasabi.js"></script>' jacobi-1d_time_00.html
gsed -i '/<script async type="text\/javascript" src="jacobi-2d_time_00.js"><\/script>/a <script src="jacobi-2d_time_00.wasabi.js"></script>' jacobi-2d_time_00.html
gsed -i '/<script async type="text\/javascript" src="seidel-2d_time_00.js"><\/script>/a <script src="seidel-2d_time_00.wasabi.js"></script>' seidel-2d_time_00.html
gsed -i '/<script async type="text\/javascript" src="heat-3d_time_00.js"><\/script>/a <script src="heat-3d_time_00.wasabi.js"></script>' heat-3d_time_00.html
gsed -i '/<script async type="text\/javascript" src="2mm_time_01.js"><\/script>/a <script src="2mm_time_01.wasabi.js"></script>' 2mm_time_01.html
gsed -i '/<script async type="text\/javascript" src="3mm_time_01.js"><\/script>/a <script src="3mm_time_01.wasabi.js"></script>' 3mm_time_01.html
gsed -i '/<script async type="text\/javascript" src="atax_time_01.js"><\/script>/a <script src="atax_time_01.wasabi.js"></script>' atax_time_01.html
gsed -i '/<script async type="text\/javascript" src="bicg_time_01.js"><\/script>/a <script src="bicg_time_01.wasabi.js"></script>' bicg_time_01.html
gsed -i '/<script async type="text\/javascript" src="cholesky_time_01.js"><\/script>/a <script src="cholesky_time_01.wasabi.js"></script>' cholesky_time_01.html
gsed -i '/<script async type="text\/javascript" src="doitgen_time_01.js"><\/script>/a <script src="doitgen_time_01.wasabi.js"></script>' doitgen_time_01.html
gsed -i '/<script async type="text\/javascript" src="gemm_time_01.js"><\/script>/a <script src="gemm_time_01.wasabi.js"></script>' gemm_time_01.html
gsed -i '/<script async type="text\/javascript" src="gemver_time_01.js"><\/script>/a <script src="gemver_time_01.wasabi.js"></script>' gemver_time_01.html
gsed -i '/<script async type="text\/javascript" src="gesummv_time_01.js"><\/script>/a <script src="gesummv_time_01.wasabi.js"></script>' gesummv_time_01.html
gsed -i '/<script async type="text\/javascript" src="mvt_time_01.js"><\/script>/a <script src="mvt_time_01.wasabi.js"></script>' mvt_time_01.html
gsed -i '/<script async type="text\/javascript" src="symm_time_01.js"><\/script>/a <script src="symm_time_01.wasabi.js"></script>' symm_time_01.html
gsed -i '/<script async type="text\/javascript" src="syr2k_time_01.js"><\/script>/a <script src="syr2k_time_01.wasabi.js"></script>' syr2k_time_01.html
gsed -i '/<script async type="text\/javascript" src="syrk_time_01.js"><\/script>/a <script src="syrk_time_01.wasabi.js"></script>' syrk_time_01.html
gsed -i '/<script async type="text\/javascript" src="trisolv_time_01.js"><\/script>/a <script src="trisolv_time_01.wasabi.js"></script>' trisolv_time_01.html
gsed -i '/<script async type="text\/javascript" src="trmm_time_01.js"><\/script>/a <script src="trmm_time_01.wasabi.js"></script>' trmm_time_01.html
gsed -i '/<script async type="text\/javascript" src="durbin_time_01.js"><\/script>/a <script src="durbin_time_01.wasabi.js"></script>' durbin_time_01.html
gsed -i '/<script async type="text\/javascript" src="gramschmidt_time_01.js"><\/script>/a <script src="gramschmidt_time_01.wasabi.js"></script>' gramschmidt_time_01.html
gsed -i '/<script async type="text\/javascript" src="lu_time_01.js"><\/script>/a <script src="lu_time_01.wasabi.js"></script>' lu_time_01.html
gsed -i '/<script async type="text\/javascript" src="ludcmp_time_01.js"><\/script>/a <script src="ludcmp_time_01.wasabi.js"></script>' ludcmp_time_01.html
gsed -i '/<script async type="text\/javascript" src="correlation_time_01.js"><\/script>/a <script src="correlation_time_01.wasabi.js"></script>' correlation_time_01.html
gsed -i '/<script async type="text\/javascript" src="covariance_time_01.js"><\/script>/a <script src="covariance_time_01.wasabi.js"></script>' covariance_time_01.html
gsed -i '/<script async type="text\/javascript" src="floyd-warshall_time_01.js"><\/script>/a <script src="floyd-warshall_time_01.wasabi.js"></script>' floyd-warshall_time_01.html
gsed -i '/<script async type="text\/javascript" src="nussinov_time_01.js"><\/script>/a <script src="nussinov_time_01.wasabi.js"></script>' nussinov_time_01.html
gsed -i '/<script async type="text\/javascript" src="deriche_time_01.js"><\/script>/a <script src="deriche_time_01.wasabi.js"></script>' deriche_time_01.html
gsed -i '/<script async type="text\/javascript" src="adi_time_01.js"><\/script>/a <script src="adi_time_01.wasabi.js"></script>' adi_time_01.html
gsed -i '/<script async type="text\/javascript" src="fdtd-2d_time_01.js"><\/script>/a <script src="fdtd-2d_time_01.wasabi.js"></script>' fdtd-2d_time_01.html
gsed -i '/<script async type="text\/javascript" src="jacobi-1d_time_01.js"><\/script>/a <script src="jacobi-1d_time_01.wasabi.js"></script>' jacobi-1d_time_01.html
gsed -i '/<script async type="text\/javascript" src="jacobi-2d_time_01.js"><\/script>/a <script src="jacobi-2d_time_01.wasabi.js"></script>' jacobi-2d_time_01.html
gsed -i '/<script async type="text\/javascript" src="seidel-2d_time_01.js"><\/script>/a <script src="seidel-2d_time_01.wasabi.js"></script>' seidel-2d_time_01.html
gsed -i '/<script async type="text\/javascript" src="heat-3d_time_01.js"><\/script>/a <script src="heat-3d_time_01.wasabi.js"></script>' heat-3d_time_01.html
gsed -i '/<script async type="text\/javascript" src="2mm_time_02.js"><\/script>/a <script src="2mm_time_02.wasabi.js"></script>' 2mm_time_02.html
gsed -i '/<script async type="text\/javascript" src="3mm_time_02.js"><\/script>/a <script src="3mm_time_02.wasabi.js"></script>' 3mm_time_02.html
gsed -i '/<script async type="text\/javascript" src="atax_time_02.js"><\/script>/a <script src="atax_time_02.wasabi.js"></script>' atax_time_02.html
gsed -i '/<script async type="text\/javascript" src="bicg_time_02.js"><\/script>/a <script src="bicg_time_02.wasabi.js"></script>' bicg_time_02.html
gsed -i '/<script async type="text\/javascript" src="cholesky_time_02.js"><\/script>/a <script src="cholesky_time_02.wasabi.js"></script>' cholesky_time_02.html
gsed -i '/<script async type="text\/javascript" src="doitgen_time_02.js"><\/script>/a <script src="doitgen_time_02.wasabi.js"></script>' doitgen_time_02.html
gsed -i '/<script async type="text\/javascript" src="gemm_time_02.js"><\/script>/a <script src="gemm_time_02.wasabi.js"></script>' gemm_time_02.html
gsed -i '/<script async type="text\/javascript" src="gemver_time_02.js"><\/script>/a <script src="gemver_time_02.wasabi.js"></script>' gemver_time_02.html
gsed -i '/<script async type="text\/javascript" src="gesummv_time_02.js"><\/script>/a <script src="gesummv_time_02.wasabi.js"></script>' gesummv_time_02.html
gsed -i '/<script async type="text\/javascript" src="mvt_time_02.js"><\/script>/a <script src="mvt_time_02.wasabi.js"></script>' mvt_time_02.html
gsed -i '/<script async type="text\/javascript" src="symm_time_02.js"><\/script>/a <script src="symm_time_02.wasabi.js"></script>' symm_time_02.html
gsed -i '/<script async type="text\/javascript" src="syr2k_time_02.js"><\/script>/a <script src="syr2k_time_02.wasabi.js"></script>' syr2k_time_02.html
gsed -i '/<script async type="text\/javascript" src="syrk_time_02.js"><\/script>/a <script src="syrk_time_02.wasabi.js"></script>' syrk_time_02.html
gsed -i '/<script async type="text\/javascript" src="trisolv_time_02.js"><\/script>/a <script src="trisolv_time_02.wasabi.js"></script>' trisolv_time_02.html
gsed -i '/<script async type="text\/javascript" src="trmm_time_02.js"><\/script>/a <script src="trmm_time_02.wasabi.js"></script>' trmm_time_02.html
gsed -i '/<script async type="text\/javascript" src="durbin_time_02.js"><\/script>/a <script src="durbin_time_02.wasabi.js"></script>' durbin_time_02.html
gsed -i '/<script async type="text\/javascript" src="gramschmidt_time_02.js"><\/script>/a <script src="gramschmidt_time_02.wasabi.js"></script>' gramschmidt_time_02.html
gsed -i '/<script async type="text\/javascript" src="lu_time_02.js"><\/script>/a <script src="lu_time_02.wasabi.js"></script>' lu_time_02.html
gsed -i '/<script async type="text\/javascript" src="ludcmp_time_02.js"><\/script>/a <script src="ludcmp_time_02.wasabi.js"></script>' ludcmp_time_02.html
gsed -i '/<script async type="text\/javascript" src="correlation_time_02.js"><\/script>/a <script src="correlation_time_02.wasabi.js"></script>' correlation_time_02.html
gsed -i '/<script async type="text\/javascript" src="covariance_time_02.js"><\/script>/a <script src="covariance_time_02.wasabi.js"></script>' covariance_time_02.html
gsed -i '/<script async type="text\/javascript" src="floyd-warshall_time_02.js"><\/script>/a <script src="floyd-warshall_time_02.wasabi.js"></script>' floyd-warshall_time_02.html
gsed -i '/<script async type="text\/javascript" src="nussinov_time_02.js"><\/script>/a <script src="nussinov_time_02.wasabi.js"></script>' nussinov_time_02.html
gsed -i '/<script async type="text\/javascript" src="deriche_time_02.js"><\/script>/a <script src="deriche_time_02.wasabi.js"></script>' deriche_time_02.html
gsed -i '/<script async type="text\/javascript" src="adi_time_02.js"><\/script>/a <script src="adi_time_02.wasabi.js"></script>' adi_time_02.html
gsed -i '/<script async type="text\/javascript" src="fdtd-2d_time_02.js"><\/script>/a <script src="fdtd-2d_time_02.wasabi.js"></script>' fdtd-2d_time_02.html
gsed -i '/<script async type="text\/javascript" src="jacobi-1d_time_02.js"><\/script>/a <script src="jacobi-1d_time_02.wasabi.js"></script>' jacobi-1d_time_02.html
gsed -i '/<script async type="text\/javascript" src="jacobi-2d_time_02.js"><\/script>/a <script src="jacobi-2d_time_02.wasabi.js"></script>' jacobi-2d_time_02.html
gsed -i '/<script async type="text\/javascript" src="seidel-2d_time_02.js"><\/script>/a <script src="seidel-2d_time_02.wasabi.js"></script>' seidel-2d_time_02.html
gsed -i '/<script async type="text\/javascript" src="heat-3d_time_02.js"><\/script>/a <script src="heat-3d_time_02.wasabi.js"></script>' heat-3d_time_02.html
gsed -i '/<script async type="text\/javascript" src="2mm_time_03.js"><\/script>/a <script src="2mm_time_03.wasabi.js"></script>' 2mm_time_03.html
gsed -i '/<script async type="text\/javascript" src="3mm_time_03.js"><\/script>/a <script src="3mm_time_03.wasabi.js"></script>' 3mm_time_03.html
gsed -i '/<script async type="text\/javascript" src="atax_time_03.js"><\/script>/a <script src="atax_time_03.wasabi.js"></script>' atax_time_03.html
gsed -i '/<script async type="text\/javascript" src="bicg_time_03.js"><\/script>/a <script src="bicg_time_03.wasabi.js"></script>' bicg_time_03.html
gsed -i '/<script async type="text\/javascript" src="cholesky_time_03.js"><\/script>/a <script src="cholesky_time_03.wasabi.js"></script>' cholesky_time_03.html
gsed -i '/<script async type="text\/javascript" src="doitgen_time_03.js"><\/script>/a <script src="doitgen_time_03.wasabi.js"></script>' doitgen_time_03.html
gsed -i '/<script async type="text\/javascript" src="gemm_time_03.js"><\/script>/a <script src="gemm_time_03.wasabi.js"></script>' gemm_time_03.html
gsed -i '/<script async type="text\/javascript" src="gemver_time_03.js"><\/script>/a <script src="gemver_time_03.wasabi.js"></script>' gemver_time_03.html
gsed -i '/<script async type="text\/javascript" src="gesummv_time_03.js"><\/script>/a <script src="gesummv_time_03.wasabi.js"></script>' gesummv_time_03.html
gsed -i '/<script async type="text\/javascript" src="mvt_time_03.js"><\/script>/a <script src="mvt_time_03.wasabi.js"></script>' mvt_time_03.html
gsed -i '/<script async type="text\/javascript" src="symm_time_03.js"><\/script>/a <script src="symm_time_03.wasabi.js"></script>' symm_time_03.html
gsed -i '/<script async type="text\/javascript" src="syr2k_time_03.js"><\/script>/a <script src="syr2k_time_03.wasabi.js"></script>' syr2k_time_03.html
gsed -i '/<script async type="text\/javascript" src="syrk_time_03.js"><\/script>/a <script src="syrk_time_03.wasabi.js"></script>' syrk_time_03.html
gsed -i '/<script async type="text\/javascript" src="trisolv_time_03.js"><\/script>/a <script src="trisolv_time_03.wasabi.js"></script>' trisolv_time_03.html
gsed -i '/<script async type="text\/javascript" src="trmm_time_03.js"><\/script>/a <script src="trmm_time_03.wasabi.js"></script>' trmm_time_03.html
gsed -i '/<script async type="text\/javascript" src="durbin_time_03.js"><\/script>/a <script src="durbin_time_03.wasabi.js"></script>' durbin_time_03.html
gsed -i '/<script async type="text\/javascript" src="gramschmidt_time_03.js"><\/script>/a <script src="gramschmidt_time_03.wasabi.js"></script>' gramschmidt_time_03.html
gsed -i '/<script async type="text\/javascript" src="lu_time_03.js"><\/script>/a <script src="lu_time_03.wasabi.js"></script>' lu_time_03.html
gsed -i '/<script async type="text\/javascript" src="ludcmp_time_03.js"><\/script>/a <script src="ludcmp_time_03.wasabi.js"></script>' ludcmp_time_03.html
gsed -i '/<script async type="text\/javascript" src="correlation_time_03.js"><\/script>/a <script src="correlation_time_03.wasabi.js"></script>' correlation_time_03.html
gsed -i '/<script async type="text\/javascript" src="covariance_time_03.js"><\/script>/a <script src="covariance_time_03.wasabi.js"></script>' covariance_time_03.html
gsed -i '/<script async type="text\/javascript" src="floyd-warshall_time_03.js"><\/script>/a <script src="floyd-warshall_time_03.wasabi.js"></script>' floyd-warshall_time_03.html
gsed -i '/<script async type="text\/javascript" src="nussinov_time_03.js"><\/script>/a <script src="nussinov_time_03.wasabi.js"></script>' nussinov_time_03.html
gsed -i '/<script async type="text\/javascript" src="deriche_time_03.js"><\/script>/a <script src="deriche_time_03.wasabi.js"></script>' deriche_time_03.html
gsed -i '/<script async type="text\/javascript" src="adi_time_03.js"><\/script>/a <script src="adi_time_03.wasabi.js"></script>' adi_time_03.html
gsed -i '/<script async type="text\/javascript" src="fdtd-2d_time_03.js"><\/script>/a <script src="fdtd-2d_time_03.wasabi.js"></script>' fdtd-2d_time_03.html
gsed -i '/<script async type="text\/javascript" src="jacobi-1d_time_03.js"><\/script>/a <script src="jacobi-1d_time_03.wasabi.js"></script>' jacobi-1d_time_03.html
gsed -i '/<script async type="text\/javascript" src="jacobi-2d_time_03.js"><\/script>/a <script src="jacobi-2d_time_03.wasabi.js"></script>' jacobi-2d_time_03.html
gsed -i '/<script async type="text\/javascript" src="seidel-2d_time_03.js"><\/script>/a <script src="seidel-2d_time_03.wasabi.js"></script>' seidel-2d_time_03.html
gsed -i '/<script async type="text\/javascript" src="heat-3d_time_03.js"><\/script>/a <script src="heat-3d_time_03.wasabi.js"></script>' heat-3d_time_03.html