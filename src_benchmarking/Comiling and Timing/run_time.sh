#!/bin/sh -x
gcc -O0 -I utilities -I linear-algebra/kernels/2mm/ utilities/polybench.c linear-algebra/kernels/2mm/2mm.c -DPOLYBENCH_TIME -o out/2mm_time_00
gcc -O0 -I utilities -I linear-algebra/kernels/3mm/ utilities/polybench.c linear-algebra/kernels/3mm/3mm.c -DPOLYBENCH_TIME -o out/3mm_time_00
gcc -O0 -I utilities -I linear-algebra/kernels/atax/ utilities/polybench.c linear-algebra/kernels/atax/atax.c -DPOLYBENCH_TIME -o out/atax_time_00
gcc -O0 -I utilities -I linear-algebra/kernels/bicg/ utilities/polybench.c linear-algebra/kernels/bicg/bicg.c -DPOLYBENCH_TIME -o out/bicg_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/cholesky/ utilities/polybench.c linear-algebra/solvers/cholesky/cholesky.c -DPOLYBENCH_TIME -o out/cholesky_time_00
gcc -O0 -I utilities -I linear-algebra/kernels/doitgen/ utilities/polybench.c linear-algebra/kernels/doitgen/doitgen.c -DPOLYBENCH_TIME -o out/doitgen_time_00
gcc -O0 -I utilities -I linear-algebra/blas/gemm/ utilities/polybench.c linear-algebra/blas/gemm/gemm.c -DPOLYBENCH_TIME -o out/gemm_time_00
gcc -O0 -I utilities -I linear-algebra/blas/gemver/ utilities/polybench.c linear-algebra/blas/gemver/gemver.c -DPOLYBENCH_TIME -o out/gemver_time_00
gcc -O0 -I utilities -I linear-algebra/blas/gesummv/ utilities/polybench.c linear-algebra/blas/gesummv/gesummv.c -DPOLYBENCH_TIME -o out/gesummv_time_00
gcc -O0 -I utilities -I linear-algebra/kernels/mvt/ utilities/polybench.c linear-algebra/kernels/mvt/mvt.c -DPOLYBENCH_TIME -o out/mvt_time_00
gcc -O0 -I utilities -I linear-algebra/blas/symm/ utilities/polybench.c linear-algebra/blas/symm/symm.c -DPOLYBENCH_TIME -o out/symm_time_00
gcc -O0 -I utilities -I linear-algebra/blas/syr2k/ utilities/polybench.c linear-algebra/blas/syr2k/syr2k.c -DPOLYBENCH_TIME -o out/syr2k_time_00
gcc -O0 -I utilities -I linear-algebra/blas/syrk/ utilities/polybench.c linear-algebra/blas/syrk/syrk.c -DPOLYBENCH_TIME -o out/syrk_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/trisolv/ utilities/polybench.c linear-algebra/solvers/trisolv/trisolv.c -DPOLYBENCH_TIME -o out/trisolv_time_00
gcc -O0 -I utilities -I linear-algebra/blas/trmm/ utilities/polybench.c linear-algebra/blas/trmm/trmm.c -DPOLYBENCH_TIME -o out/trmm_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/durbin/ utilities/polybench.c linear-algebra/solvers/durbin/durbin.c -DPOLYBENCH_TIME -o out/durbin_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/gramschmidt/ utilities/polybench.c linear-algebra/solvers/gramschmidt/gramschmidt.c -DPOLYBENCH_TIME -o out/gramschmidt_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/lu/ utilities/polybench.c linear-algebra/solvers/lu/lu.c -DPOLYBENCH_TIME -o out/lu_time_00
gcc -O0 -I utilities -I linear-algebra/solvers/ludcmp/ utilities/polybench.c linear-algebra/solvers/ludcmp/ludcmp.c -DPOLYBENCH_TIME -o out/ludcmp_time_00
gcc -O0 -I utilities -I datamining/correlation/ utilities/polybench.c datamining/correlation/correlation.c -DPOLYBENCH_TIME -o out/correlation_time_00
gcc -O0 -I utilities -I datamining/covariance/ utilities/polybench.c datamining/covariance/covariance.c -DPOLYBENCH_TIME -o out/covariance_time_00
gcc -O0 -I utilities -I medley/floyd-warshall/ utilities/polybench.c medley/floyd-warshall/floyd-warshall.c -DPOLYBENCH_TIME -o out/floyd-warshall_time_00
gcc -O0 -I utilities -I medley/nussinov/ utilities/polybench.c medley/nussinov/nussinov.c -DPOLYBENCH_TIME -o out/nussinov_time_00
gcc -O0 -I utilities -I medley/deriche/ utilities/polybench.c medley/deriche/deriche.c -DPOLYBENCH_TIME -o out/deriche_time_00
gcc -O0 -I utilities -I stencils/adi/ utilities/polybench.c stencils/adi/adi.c -DPOLYBENCH_TIME -o out/adi_time_00
gcc -O0 -I utilities -I stencils/fdtd-2d/ utilities/polybench.c stencils/fdtd-2d/fdtd-2d.c -DPOLYBENCH_TIME -o out/fdtd-2d_time_00
gcc -O0 -I utilities -I stencils/jacobi-1d/ utilities/polybench.c stencils/jacobi-1d/jacobi-1d.c -DPOLYBENCH_TIME -o out/jacobi-1d_time_00
gcc -O0 -I utilities -I stencils/jacobi-2d/ utilities/polybench.c stencils/jacobi-2d/jacobi-2d.c -DPOLYBENCH_TIME -o out/jacobi-2d_time_00
gcc -O0 -I utilities -I stencils/seidel-2d/ utilities/polybench.c stencils/seidel-2d/seidel-2d.c -DPOLYBENCH_TIME -o out/seidel-2d_time_00
gcc -O0 -I utilities -I stencils/heat-3d/ utilities/polybench.c stencils/heat-3d/heat-3d.c -DPOLYBENCH_TIME -o out/heat-3d_time_00
gcc -O1 -I utilities -I linear-algebra/kernels/2mm/ utilities/polybench.c linear-algebra/kernels/2mm/2mm.c -DPOLYBENCH_TIME -o out/2mm_time_01
gcc -O1 -I utilities -I linear-algebra/kernels/3mm/ utilities/polybench.c linear-algebra/kernels/3mm/3mm.c -DPOLYBENCH_TIME -o out/3mm_time_01
gcc -O1 -I utilities -I linear-algebra/kernels/atax/ utilities/polybench.c linear-algebra/kernels/atax/atax.c -DPOLYBENCH_TIME -o out/atax_time_01
gcc -O1 -I utilities -I linear-algebra/kernels/bicg/ utilities/polybench.c linear-algebra/kernels/bicg/bicg.c -DPOLYBENCH_TIME -o out/bicg_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/cholesky/ utilities/polybench.c linear-algebra/solvers/cholesky/cholesky.c -DPOLYBENCH_TIME -o out/cholesky_time_01
gcc -O1 -I utilities -I linear-algebra/kernels/doitgen/ utilities/polybench.c linear-algebra/kernels/doitgen/doitgen.c -DPOLYBENCH_TIME -o out/doitgen_time_01
gcc -O1 -I utilities -I linear-algebra/blas/gemm/ utilities/polybench.c linear-algebra/blas/gemm/gemm.c -DPOLYBENCH_TIME -o out/gemm_time_01
gcc -O1 -I utilities -I linear-algebra/blas/gemver/ utilities/polybench.c linear-algebra/blas/gemver/gemver.c -DPOLYBENCH_TIME -o out/gemver_time_01
gcc -O1 -I utilities -I linear-algebra/blas/gesummv/ utilities/polybench.c linear-algebra/blas/gesummv/gesummv.c -DPOLYBENCH_TIME -o out/gesummv_time_01
gcc -O1 -I utilities -I linear-algebra/kernels/mvt/ utilities/polybench.c linear-algebra/kernels/mvt/mvt.c -DPOLYBENCH_TIME -o out/mvt_time_01
gcc -O1 -I utilities -I linear-algebra/blas/symm/ utilities/polybench.c linear-algebra/blas/symm/symm.c -DPOLYBENCH_TIME -o out/symm_time_01
gcc -O1 -I utilities -I linear-algebra/blas/syr2k/ utilities/polybench.c linear-algebra/blas/syr2k/syr2k.c -DPOLYBENCH_TIME -o out/syr2k_time_01
gcc -O1 -I utilities -I linear-algebra/blas/syrk/ utilities/polybench.c linear-algebra/blas/syrk/syrk.c -DPOLYBENCH_TIME -o out/syrk_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/trisolv/ utilities/polybench.c linear-algebra/solvers/trisolv/trisolv.c -DPOLYBENCH_TIME -o out/trisolv_time_01
gcc -O1 -I utilities -I linear-algebra/blas/trmm/ utilities/polybench.c linear-algebra/blas/trmm/trmm.c -DPOLYBENCH_TIME -o out/trmm_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/durbin/ utilities/polybench.c linear-algebra/solvers/durbin/durbin.c -DPOLYBENCH_TIME -o out/durbin_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/gramschmidt/ utilities/polybench.c linear-algebra/solvers/gramschmidt/gramschmidt.c -DPOLYBENCH_TIME -o out/gramschmidt_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/lu/ utilities/polybench.c linear-algebra/solvers/lu/lu.c -DPOLYBENCH_TIME -o out/lu_time_01
gcc -O1 -I utilities -I linear-algebra/solvers/ludcmp/ utilities/polybench.c linear-algebra/solvers/ludcmp/ludcmp.c -DPOLYBENCH_TIME -o out/ludcmp_time_01
gcc -O1 -I utilities -I datamining/correlation/ utilities/polybench.c datamining/correlation/correlation.c -DPOLYBENCH_TIME -o out/correlation_time_01
gcc -O1 -I utilities -I datamining/covariance/ utilities/polybench.c datamining/covariance/covariance.c -DPOLYBENCH_TIME -o out/covariance_time_01
gcc -O1 -I utilities -I medley/floyd-warshall/ utilities/polybench.c medley/floyd-warshall/floyd-warshall.c -DPOLYBENCH_TIME -o out/floyd-warshall_time_01
gcc -O1 -I utilities -I medley/nussinov/ utilities/polybench.c medley/nussinov/nussinov.c -DPOLYBENCH_TIME -o out/nussinov_time_01
gcc -O1 -I utilities -I medley/deriche/ utilities/polybench.c medley/deriche/deriche.c -DPOLYBENCH_TIME -o out/deriche_time_01
gcc -O1 -I utilities -I stencils/adi/ utilities/polybench.c stencils/adi/adi.c -DPOLYBENCH_TIME -o out/adi_time_01
gcc -O1 -I utilities -I stencils/fdtd-2d/ utilities/polybench.c stencils/fdtd-2d/fdtd-2d.c -DPOLYBENCH_TIME -o out/fdtd-2d_time_01
gcc -O1 -I utilities -I stencils/jacobi-1d/ utilities/polybench.c stencils/jacobi-1d/jacobi-1d.c -DPOLYBENCH_TIME -o out/jacobi-1d_time_01
gcc -O1 -I utilities -I stencils/jacobi-2d/ utilities/polybench.c stencils/jacobi-2d/jacobi-2d.c -DPOLYBENCH_TIME -o out/jacobi-2d_time_01
gcc -O1 -I utilities -I stencils/seidel-2d/ utilities/polybench.c stencils/seidel-2d/seidel-2d.c -DPOLYBENCH_TIME -o out/seidel-2d_time_01
gcc -O1 -I utilities -I stencils/heat-3d/ utilities/polybench.c stencils/heat-3d/heat-3d.c -DPOLYBENCH_TIME -o out/heat-3d_time_01
gcc -O2 -I utilities -I linear-algebra/kernels/2mm/ utilities/polybench.c linear-algebra/kernels/2mm/2mm.c -DPOLYBENCH_TIME -o out/2mm_time_02
gcc -O2 -I utilities -I linear-algebra/kernels/3mm/ utilities/polybench.c linear-algebra/kernels/3mm/3mm.c -DPOLYBENCH_TIME -o out/3mm_time_02
gcc -O2 -I utilities -I linear-algebra/kernels/atax/ utilities/polybench.c linear-algebra/kernels/atax/atax.c -DPOLYBENCH_TIME -o out/atax_time_02
gcc -O2 -I utilities -I linear-algebra/kernels/bicg/ utilities/polybench.c linear-algebra/kernels/bicg/bicg.c -DPOLYBENCH_TIME -o out/bicg_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/cholesky/ utilities/polybench.c linear-algebra/solvers/cholesky/cholesky.c -DPOLYBENCH_TIME -o out/cholesky_time_02
gcc -O2 -I utilities -I linear-algebra/kernels/doitgen/ utilities/polybench.c linear-algebra/kernels/doitgen/doitgen.c -DPOLYBENCH_TIME -o out/doitgen_time_02
gcc -O2 -I utilities -I linear-algebra/blas/gemm/ utilities/polybench.c linear-algebra/blas/gemm/gemm.c -DPOLYBENCH_TIME -o out/gemm_time_02
gcc -O2 -I utilities -I linear-algebra/blas/gemver/ utilities/polybench.c linear-algebra/blas/gemver/gemver.c -DPOLYBENCH_TIME -o out/gemver_time_02
gcc -O2 -I utilities -I linear-algebra/blas/gesummv/ utilities/polybench.c linear-algebra/blas/gesummv/gesummv.c -DPOLYBENCH_TIME -o out/gesummv_time_02
gcc -O2 -I utilities -I linear-algebra/kernels/mvt/ utilities/polybench.c linear-algebra/kernels/mvt/mvt.c -DPOLYBENCH_TIME -o out/mvt_time_02
gcc -O2 -I utilities -I linear-algebra/blas/symm/ utilities/polybench.c linear-algebra/blas/symm/symm.c -DPOLYBENCH_TIME -o out/symm_time_02
gcc -O2 -I utilities -I linear-algebra/blas/syr2k/ utilities/polybench.c linear-algebra/blas/syr2k/syr2k.c -DPOLYBENCH_TIME -o out/syr2k_time_02
gcc -O2 -I utilities -I linear-algebra/blas/syrk/ utilities/polybench.c linear-algebra/blas/syrk/syrk.c -DPOLYBENCH_TIME -o out/syrk_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/trisolv/ utilities/polybench.c linear-algebra/solvers/trisolv/trisolv.c -DPOLYBENCH_TIME -o out/trisolv_time_02
gcc -O2 -I utilities -I linear-algebra/blas/trmm/ utilities/polybench.c linear-algebra/blas/trmm/trmm.c -DPOLYBENCH_TIME -o out/trmm_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/durbin/ utilities/polybench.c linear-algebra/solvers/durbin/durbin.c -DPOLYBENCH_TIME -o out/durbin_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/gramschmidt/ utilities/polybench.c linear-algebra/solvers/gramschmidt/gramschmidt.c -DPOLYBENCH_TIME -o out/gramschmidt_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/lu/ utilities/polybench.c linear-algebra/solvers/lu/lu.c -DPOLYBENCH_TIME -o out/lu_time_02
gcc -O2 -I utilities -I linear-algebra/solvers/ludcmp/ utilities/polybench.c linear-algebra/solvers/ludcmp/ludcmp.c -DPOLYBENCH_TIME -o out/ludcmp_time_02
gcc -O2 -I utilities -I datamining/correlation/ utilities/polybench.c datamining/correlation/correlation.c -DPOLYBENCH_TIME -o out/correlation_time_02
gcc -O2 -I utilities -I datamining/covariance/ utilities/polybench.c datamining/covariance/covariance.c -DPOLYBENCH_TIME -o out/covariance_time_02
gcc -O2 -I utilities -I medley/floyd-warshall/ utilities/polybench.c medley/floyd-warshall/floyd-warshall.c -DPOLYBENCH_TIME -o out/floyd-warshall_time_02
gcc -O2 -I utilities -I medley/nussinov/ utilities/polybench.c medley/nussinov/nussinov.c -DPOLYBENCH_TIME -o out/nussinov_time_02
gcc -O2 -I utilities -I medley/deriche/ utilities/polybench.c medley/deriche/deriche.c -DPOLYBENCH_TIME -o out/deriche_time_02
gcc -O2 -I utilities -I stencils/adi/ utilities/polybench.c stencils/adi/adi.c -DPOLYBENCH_TIME -o out/adi_time_02
gcc -O2 -I utilities -I stencils/fdtd-2d/ utilities/polybench.c stencils/fdtd-2d/fdtd-2d.c -DPOLYBENCH_TIME -o out/fdtd-2d_time_02
gcc -O2 -I utilities -I stencils/jacobi-1d/ utilities/polybench.c stencils/jacobi-1d/jacobi-1d.c -DPOLYBENCH_TIME -o out/jacobi-1d_time_02
gcc -O2 -I utilities -I stencils/jacobi-2d/ utilities/polybench.c stencils/jacobi-2d/jacobi-2d.c -DPOLYBENCH_TIME -o out/jacobi-2d_time_02
gcc -O2 -I utilities -I stencils/seidel-2d/ utilities/polybench.c stencils/seidel-2d/seidel-2d.c -DPOLYBENCH_TIME -o out/seidel-2d_time_02
gcc -O2 -I utilities -I stencils/heat-3d/ utilities/polybench.c stencils/heat-3d/heat-3d.c -DPOLYBENCH_TIME -o out/heat-3d_time_02
gcc -O3 -I utilities -I linear-algebra/kernels/2mm/ utilities/polybench.c linear-algebra/kernels/2mm/2mm.c -DPOLYBENCH_TIME -o out/2mm_time_03
gcc -O3 -I utilities -I linear-algebra/kernels/3mm/ utilities/polybench.c linear-algebra/kernels/3mm/3mm.c -DPOLYBENCH_TIME -o out/3mm_time_03
gcc -O3 -I utilities -I linear-algebra/kernels/atax/ utilities/polybench.c linear-algebra/kernels/atax/atax.c -DPOLYBENCH_TIME -o out/atax_time_03
gcc -O3 -I utilities -I linear-algebra/kernels/bicg/ utilities/polybench.c linear-algebra/kernels/bicg/bicg.c -DPOLYBENCH_TIME -o out/bicg_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/cholesky/ utilities/polybench.c linear-algebra/solvers/cholesky/cholesky.c -DPOLYBENCH_TIME -o out/cholesky_time_03
gcc -O3 -I utilities -I linear-algebra/kernels/doitgen/ utilities/polybench.c linear-algebra/kernels/doitgen/doitgen.c -DPOLYBENCH_TIME -o out/doitgen_time_03
gcc -O3 -I utilities -I linear-algebra/blas/gemm/ utilities/polybench.c linear-algebra/blas/gemm/gemm.c -DPOLYBENCH_TIME -o out/gemm_time_03
gcc -O3 -I utilities -I linear-algebra/blas/gemver/ utilities/polybench.c linear-algebra/blas/gemver/gemver.c -DPOLYBENCH_TIME -o out/gemver_time_03
gcc -O3 -I utilities -I linear-algebra/blas/gesummv/ utilities/polybench.c linear-algebra/blas/gesummv/gesummv.c -DPOLYBENCH_TIME -o out/gesummv_time_03
gcc -O3 -I utilities -I linear-algebra/kernels/mvt/ utilities/polybench.c linear-algebra/kernels/mvt/mvt.c -DPOLYBENCH_TIME -o out/mvt_time_03
gcc -O3 -I utilities -I linear-algebra/blas/symm/ utilities/polybench.c linear-algebra/blas/symm/symm.c -DPOLYBENCH_TIME -o out/symm_time_03
gcc -O3 -I utilities -I linear-algebra/blas/syr2k/ utilities/polybench.c linear-algebra/blas/syr2k/syr2k.c -DPOLYBENCH_TIME -o out/syr2k_time_03
gcc -O3 -I utilities -I linear-algebra/blas/syrk/ utilities/polybench.c linear-algebra/blas/syrk/syrk.c -DPOLYBENCH_TIME -o out/syrk_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/trisolv/ utilities/polybench.c linear-algebra/solvers/trisolv/trisolv.c -DPOLYBENCH_TIME -o out/trisolv_time_03
gcc -O3 -I utilities -I linear-algebra/blas/trmm/ utilities/polybench.c linear-algebra/blas/trmm/trmm.c -DPOLYBENCH_TIME -o out/trmm_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/durbin/ utilities/polybench.c linear-algebra/solvers/durbin/durbin.c -DPOLYBENCH_TIME -o out/durbin_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/gramschmidt/ utilities/polybench.c linear-algebra/solvers/gramschmidt/gramschmidt.c -DPOLYBENCH_TIME -o out/gramschmidt_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/lu/ utilities/polybench.c linear-algebra/solvers/lu/lu.c -DPOLYBENCH_TIME -o out/lu_time_03
gcc -O3 -I utilities -I linear-algebra/solvers/ludcmp/ utilities/polybench.c linear-algebra/solvers/ludcmp/ludcmp.c -DPOLYBENCH_TIME -o out/ludcmp_time_03
gcc -O3 -I utilities -I datamining/correlation/ utilities/polybench.c datamining/correlation/correlation.c -DPOLYBENCH_TIME -o out/correlation_time_03
gcc -O3 -I utilities -I datamining/covariance/ utilities/polybench.c datamining/covariance/covariance.c -DPOLYBENCH_TIME -o out/covariance_time_03
gcc -O3 -I utilities -I medley/floyd-warshall/ utilities/polybench.c medley/floyd-warshall/floyd-warshall.c -DPOLYBENCH_TIME -o out/floyd-warshall_time_03
gcc -O3 -I utilities -I medley/nussinov/ utilities/polybench.c medley/nussinov/nussinov.c -DPOLYBENCH_TIME -o out/nussinov_time_03
gcc -O3 -I utilities -I medley/deriche/ utilities/polybench.c medley/deriche/deriche.c -DPOLYBENCH_TIME -o out/deriche_time_03
gcc -O3 -I utilities -I stencils/adi/ utilities/polybench.c stencils/adi/adi.c -DPOLYBENCH_TIME -o out/adi_time_03
gcc -O3 -I utilities -I stencils/fdtd-2d/ utilities/polybench.c stencils/fdtd-2d/fdtd-2d.c -DPOLYBENCH_TIME -o out/fdtd-2d_time_03
gcc -O3 -I utilities -I stencils/jacobi-1d/ utilities/polybench.c stencils/jacobi-1d/jacobi-1d.c -DPOLYBENCH_TIME -o out/jacobi-1d_time_03
gcc -O3 -I utilities -I stencils/jacobi-2d/ utilities/polybench.c stencils/jacobi-2d/jacobi-2d.c -DPOLYBENCH_TIME -o out/jacobi-2d_time_03
gcc -O3 -I utilities -I stencils/seidel-2d/ utilities/polybench.c stencils/seidel-2d/seidel-2d.c -DPOLYBENCH_TIME -o out/seidel-2d_time_03
gcc -O3 -I utilities -I stencils/heat-3d/ utilities/polybench.c stencils/heat-3d/heat-3d.c -DPOLYBENCH_TIME -o out/heat-3d_time_03

echo "out/2mm_time_00"
out/2mm_time_00

echo "out/3mm_time_00"
out/3mm_time_00

echo "out/atax_time_00"
out/atax_time_00

echo "out/bicg_time_00"
out/bicg_time_00

echo "out/cholesky_time_00"
out/cholesky_time_00

echo "out/doitgen_time_00"
out/doitgen_time_00

echo "out/gemm_time_00"
out/gemm_time_00

echo "out/gemver_time_00"
out/gemver_time_00

echo "out/gesummv_time_00"
out/gesummv_time_00

echo "out/mvt_time_00"
out/mvt_time_00

echo "out/symm_time_00"
out/symm_time_00

echo "out/syr2k_time_00"
out/syr2k_time_00

echo "out/syrk_time_00"
out/syrk_time_00

echo "out/trisolv_time_00"
out/trisolv_time_00

echo "out/trmm_time_00"
out/trmm_time_00

echo "out/durbin_time_00"
out/durbin_time_00

echo "out/gramschmidt_time_00"
out/gramschmidt_time_00

echo "out/lu_time_00"
out/lu_time_00

echo "out/ludcmp_time_00"
out/ludcmp_time_00

echo "out/correlation_time_00"
out/correlation_time_00

echo "out/covariance_time_00"
out/covariance_time_00

echo "out/floyd-warshall_time_00"
out/floyd-warshall_time_00

echo "out/nussinov_time_00"
out/nussinov_time_00

echo "out/deriche_time_00"
out/deriche_time_00

echo "out/adi_time_00"
out/adi_time_00

echo "out/fdtd-2d_time_00"
out/fdtd-2d_time_00

echo "out/jacobi-1d_time_00"
out/jacobi-1d_time_00

echo "out/jacobi-2d_time_00"
out/jacobi-2d_time_00

echo "out/seidel-2d_time_00"
out/seidel-2d_time_00

echo "out/heat-3d_time_00"
out/heat-3d_time_00

echo "out/2mm_time_01"
out/2mm_time_01

echo "out/3mm_time_01"
out/3mm_time_01

echo "out/atax_time_01"
out/atax_time_01

echo "out/bicg_time_01"
out/bicg_time_01

echo "out/cholesky_time_01"
out/cholesky_time_01

echo "out/doitgen_time_01"
out/doitgen_time_01

echo "out/gemm_time_01"
out/gemm_time_01

echo "out/gemver_time_01"
out/gemver_time_01

echo "out/gesummv_time_01"
out/gesummv_time_01

echo "out/mvt_time_01"
out/mvt_time_01

echo "out/symm_time_01"
out/symm_time_01

echo "out/syr2k_time_01"
out/syr2k_time_01

echo "out/syrk_time_01"
out/syrk_time_01

echo "out/trisolv_time_01"
out/trisolv_time_01

echo "out/trmm_time_01"
out/trmm_time_01

echo "out/durbin_time_01"
out/durbin_time_01

echo "out/gramschmidt_time_01"
out/gramschmidt_time_01

echo "out/lu_time_01"
out/lu_time_01

echo "out/ludcmp_time_01"
out/ludcmp_time_01

echo "out/correlation_time_01"
out/correlation_time_01

echo "out/covariance_time_01"
out/covariance_time_01

echo "out/floyd-warshall_time_01"
out/floyd-warshall_time_01

echo "out/nussinov_time_01"
out/nussinov_time_01

echo "out/deriche_time_01"
out/deriche_time_01

echo "out/adi_time_01"
out/adi_time_01

echo "out/fdtd-2d_time_01"
out/fdtd-2d_time_01

echo "out/jacobi-1d_time_01"
out/jacobi-1d_time_01

echo "out/jacobi-2d_time_01"
out/jacobi-2d_time_01

echo "out/seidel-2d_time_01"
out/seidel-2d_time_01

echo "out/heat-3d_time_01"
out/heat-3d_time_01

echo "out/2mm_time_02"
out/2mm_time_02

echo "out/3mm_time_02"
out/3mm_time_02

echo "out/atax_time_02"
out/atax_time_02

echo "out/bicg_time_02"
out/bicg_time_02

echo "out/cholesky_time_02"
out/cholesky_time_02

echo "out/doitgen_time_02"
out/doitgen_time_02

echo "out/gemm_time_02"
out/gemm_time_02

echo "out/gemver_time_02"
out/gemver_time_02

echo "out/gesummv_time_02"
out/gesummv_time_02

echo "out/mvt_time_02"
out/mvt_time_02

echo "out/symm_time_02"
out/symm_time_02

echo "out/syr2k_time_02"
out/syr2k_time_02

echo "out/syrk_time_02"
out/syrk_time_02

echo "out/trisolv_time_02"
out/trisolv_time_02

echo "out/trmm_time_02"
out/trmm_time_02

echo "out/durbin_time_02"
out/durbin_time_02

echo "out/gramschmidt_time_02"
out/gramschmidt_time_02

echo "out/lu_time_02"
out/lu_time_02

echo "out/ludcmp_time_02"
out/ludcmp_time_02

echo "out/correlation_time_02"
out/correlation_time_02

echo "out/covariance_time_02"
out/covariance_time_02

echo "out/floyd-warshall_time_02"
out/floyd-warshall_time_02

echo "out/nussinov_time_02"
out/nussinov_time_02

echo "out/deriche_time_02"
out/deriche_time_02

echo "out/adi_time_02"
out/adi_time_02

echo "out/fdtd-2d_time_02"
out/fdtd-2d_time_02

echo "out/jacobi-1d_time_02"
out/jacobi-1d_time_02

echo "out/jacobi-2d_time_02"
out/jacobi-2d_time_02

echo "out/seidel-2d_time_02"
out/seidel-2d_time_02

echo "out/heat-3d_time_02"
out/heat-3d_time_02

echo "out/2mm_time_03"
out/2mm_time_03

echo "out/3mm_time_03"
out/3mm_time_03

echo "out/atax_time_03"
out/atax_time_03

echo "out/bicg_time_03"
out/bicg_time_03

echo "out/cholesky_time_03"
out/cholesky_time_03

echo "out/doitgen_time_03"
out/doitgen_time_03

echo "out/gemm_time_03"
out/gemm_time_03

echo "out/gemver_time_03"
out/gemver_time_03

echo "out/gesummv_time_03"
out/gesummv_time_03

echo "out/mvt_time_03"
out/mvt_time_03

echo "out/symm_time_03"
out/symm_time_03

echo "out/syr2k_time_03"
out/syr2k_time_03

echo "out/syrk_time_03"
out/syrk_time_03

echo "out/trisolv_time_03"
out/trisolv_time_03

echo "out/trmm_time_03"
out/trmm_time_03

echo "out/durbin_time_03"
out/durbin_time_03

echo "out/gramschmidt_time_03"
out/gramschmidt_time_03

echo "out/lu_time_03"
out/lu_time_03

echo "out/ludcmp_time_03"
out/ludcmp_time_03

echo "out/correlation_time_03"
out/correlation_time_03

echo "out/covariance_time_03"
out/covariance_time_03

echo "out/floyd-warshall_time_03"
out/floyd-warshall_time_03

echo "out/nussinov_time_03"
out/nussinov_time_03

echo "out/deriche_time_03"
out/deriche_time_03

echo "out/adi_time_03"
out/adi_time_03

echo "out/fdtd-2d_time_03"
out/fdtd-2d_time_03

echo "out/jacobi-1d_time_03"
out/jacobi-1d_time_03

echo "out/jacobi-2d_time_03"
out/jacobi-2d_time_03

echo "out/seidel-2d_time_03"
out/seidel-2d_time_03

echo "out/heat-3d_time_03"
out/heat-3d_time_03
