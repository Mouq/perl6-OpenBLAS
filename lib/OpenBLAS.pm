unit module OpenBLAS;
use NativeCall;
constant blas-lib = "libopenblas";

enum Order     is export(:enums) (CblasRowMajor => 101, CblasColMajor => 102);
enum Transpose is export(:enums) (CblasNoTrans => 111, CblasTrans => 112, CblasConjTrans => 113);
enum Uplo      is export(:enums) (CblasUpper => 121, CblasLower => 122);
enum Diag      is export(:enums) (CblasNonUnit => 131, CblasUnit => 132);
enum Side      is export(:enums) (CblasLeft => 141, CblasRight => 142);

our sub sdsdot(int32, num32, CArray[num32], int32, CArray[num32], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_sdsdot') {*}

our sub dsdot(int32, CArray[num32], int32, CArray[num32], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_dsdot') {*}

our sub sdot(int32, CArray[num32], int32, CArray[num32], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_sdot') {*}

our sub ddot(int32, CArray[num64], int32, CArray[num64], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_ddot') {*}

our sub cdotu_sub(int32, Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_cdotu_sub') {*}

our sub cdotc_sub(int32, Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_cdotc_sub') {*}

our sub zdotu_sub(int32, Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_zdotu_sub') {*}

our sub zdotc_sub(int32, Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_zdotc_sub') {*}

our sub snrm2(int32, CArray[num32], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_snrm2') {*}

our sub sasum(int32, CArray[num32], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_sasum') {*}

our sub dnrm2(int32, CArray[num64], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_dnrm2') {*}

our sub dasum(int32, CArray[num64], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_dasum') {*}

our sub scnrm2(int32, Pointer[void], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_scnrm2') {*}

our sub scasum(int32, Pointer[void], int32) returns num32
    is export is native(blas-lib) is symbol('cblas_scasum') {*}

our sub dznrm2(int32, Pointer[void], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_dznrm2') {*}

our sub dzasum(int32, Pointer[void], int32) returns num64
    is export is native(blas-lib) is symbol('cblas_dzasum') {*}

our sub sswap(int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sswap') {*}

our sub scopy(int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_scopy') {*}

our sub saxpy(int32, num32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_saxpy') {*}

our sub dswap(int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dswap') {*}

our sub dcopy(int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dcopy') {*}

our sub daxpy(int32, num64, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_daxpy') {*}

our sub cswap(int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cswap') {*}

our sub ccopy(int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ccopy') {*}

our sub caxpy(int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_caxpy') {*}

our sub zswap(int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zswap') {*}

our sub zcopy(int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zcopy') {*}

our sub zaxpy(int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zaxpy') {*}

our sub srotg(CArray[num32], CArray[num32], CArray[num32], CArray[num32]) returns void
    is export is native(blas-lib) is symbol('cblas_srotg') {*}

our sub srotmg(CArray[num32], CArray[num32], CArray[num32], num32, CArray[num32]) returns void
    is export is native(blas-lib) is symbol('cblas_srotmg') {*}

our sub srot(int32, CArray[num32], int32, CArray[num32], int32, num32, num32) returns void
    is export is native(blas-lib) is symbol('cblas_srot') {*}

our sub srotm(int32, CArray[num32], int32, CArray[num32], int32, CArray[num32]) returns void
    is export is native(blas-lib) is symbol('cblas_srotm') {*}

our sub drotg(CArray[num64], CArray[num64], CArray[num64], CArray[num64]) returns void
    is export is native(blas-lib) is symbol('cblas_drotg') {*}

our sub drotmg(CArray[num64], CArray[num64], CArray[num64], num64, CArray[num64]) returns void
    is export is native(blas-lib) is symbol('cblas_drotmg') {*}

our sub drot(int32, CArray[num64], int32, CArray[num64], int32, num64, num64) returns void
    is export is native(blas-lib) is symbol('cblas_drot') {*}

our sub drotm(int32, CArray[num64], int32, CArray[num64], int32, CArray[num64]) returns void
    is export is native(blas-lib) is symbol('cblas_drotm') {*}

our sub sscal(int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sscal') {*}

our sub dscal(int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dscal') {*}

our sub cscal(int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cscal') {*}

our sub zscal(int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zscal') {*}

our sub csscal(int32, num32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_csscal') {*}

our sub zdscal(int32, num64, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zdscal') {*}

our sub sgemv(int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sgemv') {*}

our sub sgbmv(int8, int8, int32, int32, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sgbmv') {*}

our sub strmv(int8, int8, int8, int8, int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_strmv') {*}

our sub stbmv(int8, int8, int8, int8, int32, int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_stbmv') {*}

our sub stpmv(int8, int8, int8, int8, int32, CArray[num32], CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_stpmv') {*}

our sub strsv(int8, int8, int8, int8, int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_strsv') {*}

our sub stbsv(int8, int8, int8, int8, int32, int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_stbsv') {*}

our sub stpsv(int8, int8, int8, int8, int32, CArray[num32], CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_stpsv') {*}

our sub dgemv(int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dgemv') {*}

our sub dgbmv(int8, int8, int32, int32, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dgbmv') {*}

our sub dtrmv(int8, int8, int8, int8, int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtrmv') {*}

our sub dtbmv(int8, int8, int8, int8, int32, int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtbmv') {*}

our sub dtpmv(int8, int8, int8, int8, int32, CArray[num64], CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtpmv') {*}

our sub dtrsv(int8, int8, int8, int8, int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtrsv') {*}

our sub dtbsv(int8, int8, int8, int8, int32, int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtbsv') {*}

our sub dtpsv(int8, int8, int8, int8, int32, CArray[num64], CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtpsv') {*}

our sub cgemv(int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cgemv') {*}

our sub cgbmv(int8, int8, int32, int32, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cgbmv') {*}

our sub ctrmv(int8, int8, int8, int8, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctrmv') {*}

our sub ctbmv(int8, int8, int8, int8, int32, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctbmv') {*}

our sub ctpmv(int8, int8, int8, int8, int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctpmv') {*}

our sub ctrsv(int8, int8, int8, int8, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctrsv') {*}

our sub ctbsv(int8, int8, int8, int8, int32, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctbsv') {*}

our sub ctpsv(int8, int8, int8, int8, int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctpsv') {*}

our sub zgemv(int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zgemv') {*}

our sub zgbmv(int8, int8, int32, int32, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zgbmv') {*}

our sub ztrmv(int8, int8, int8, int8, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztrmv') {*}

our sub ztbmv(int8, int8, int8, int8, int32, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztbmv') {*}

our sub ztpmv(int8, int8, int8, int8, int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztpmv') {*}

our sub ztrsv(int8, int8, int8, int8, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztrsv') {*}

our sub ztbsv(int8, int8, int8, int8, int32, int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztbsv') {*}

our sub ztpsv(int8, int8, int8, int8, int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztpsv') {*}

our sub ssymv(int8, int8, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssymv') {*}

our sub ssbmv(int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssbmv') {*}

our sub sspmv(int8, int8, int32, num32, CArray[num32], CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sspmv') {*}

our sub sger(int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sger') {*}

our sub ssyr(int8, int8, int32, num32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssyr') {*}

our sub sspr(int8, int8, int32, num32, CArray[num32], int32, CArray[num32]) returns void
    is export is native(blas-lib) is symbol('cblas_sspr') {*}

our sub ssyr2(int8, int8, int32, num32, CArray[num32], int32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssyr2') {*}

our sub sspr2(int8, int8, int32, num32, CArray[num32], int32, CArray[num32], int32, CArray[num32]) returns void
    is export is native(blas-lib) is symbol('cblas_sspr2') {*}

our sub dsymv(int8, int8, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsymv') {*}

our sub dsbmv(int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsbmv') {*}

our sub dspmv(int8, int8, int32, num64, CArray[num64], CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dspmv') {*}

our sub dger(int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dger') {*}

our sub dsyr(int8, int8, int32, num64, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsyr') {*}

our sub dspr(int8, int8, int32, num64, CArray[num64], int32, CArray[num64]) returns void
    is export is native(blas-lib) is symbol('cblas_dspr') {*}

our sub dsyr2(int8, int8, int32, num64, CArray[num64], int32, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsyr2') {*}

our sub dspr2(int8, int8, int32, num64, CArray[num64], int32, CArray[num64], int32, CArray[num64]) returns void
    is export is native(blas-lib) is symbol('cblas_dspr2') {*}

our sub chemv(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_chemv') {*}

our sub chbmv(int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_chbmv') {*}

our sub chpmv(int8, int8, int32, Pointer[void], Pointer[void], Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_chpmv') {*}

our sub cgeru(int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cgeru') {*}

our sub cgerc(int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cgerc') {*}

our sub cher(int8, int8, int32, num32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cher') {*}

our sub chpr(int8, int8, int32, num32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_chpr') {*}

our sub cher2(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cher2') {*}

our sub chpr2(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_chpr2') {*}

our sub zhemv(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zhemv') {*}

our sub zhbmv(int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zhbmv') {*}

our sub zhpmv(int8, int8, int32, Pointer[void], Pointer[void], Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zhpmv') {*}

our sub zgeru(int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zgeru') {*}

our sub zgerc(int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zgerc') {*}

our sub zher(int8, int8, int32, num64, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zher') {*}

our sub zhpr(int8, int8, int32, num64, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_zhpr') {*}

our sub zher2(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zher2') {*}

our sub zhpr2(int8, int8, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void]) returns void
    is export is native(blas-lib) is symbol('cblas_zhpr2') {*}

our sub sgemm(int8, int8, int8, int32, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_sgemm') {*}

our sub ssymm(int8, int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssymm') {*}

our sub ssyrk(int8, int8, int8, int32, int32, num32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssyrk') {*}

our sub ssyr2k(int8, int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32, num32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ssyr2k') {*}

our sub strmm(int8, int8, int8, int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_strmm') {*}

our sub strsm(int8, int8, int8, int8, int8, int32, int32, num32, CArray[num32], int32, CArray[num32], int32) returns void
    is export is native(blas-lib) is symbol('cblas_strsm') {*}

our sub dgemm(int8, int8, int8, int32, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dgemm') {*}

our sub dsymm(int8, int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsymm') {*}

our sub dsyrk(int8, int8, int8, int32, int32, num64, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsyrk') {*}

our sub dsyr2k(int8, int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32, num64, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dsyr2k') {*}

our sub dtrmm(int8, int8, int8, int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtrmm') {*}

our sub dtrsm(int8, int8, int8, int8, int8, int32, int32, num64, CArray[num64], int32, CArray[num64], int32) returns void
    is export is native(blas-lib) is symbol('cblas_dtrsm') {*}

our sub cgemm(int8, int8, int8, int32, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cgemm') {*}

our sub csymm(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_csymm') {*}

our sub csyrk(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_csyrk') {*}

our sub csyr2k(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_csyr2k') {*}

our sub ctrmm(int8, int8, int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctrmm') {*}

our sub ctrsm(int8, int8, int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ctrsm') {*}

our sub zgemm(int8, int8, int8, int32, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zgemm') {*}

our sub zsymm(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zsymm') {*}

our sub zsyrk(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zsyrk') {*}

our sub zsyr2k(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zsyr2k') {*}

our sub ztrmm(int8, int8, int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztrmm') {*}

our sub ztrsm(int8, int8, int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_ztrsm') {*}

our sub chemm(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_chemm') {*}

our sub cherk(int8, int8, int8, int32, int32, num32, Pointer[void], int32, num32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cherk') {*}

our sub cher2k(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, num32, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_cher2k') {*}

our sub zhemm(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, Pointer[void], Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zhemm') {*}

our sub zherk(int8, int8, int8, int32, int32, num64, Pointer[void], int32, num64, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zherk') {*}

our sub zher2k(int8, int8, int8, int32, int32, Pointer[void], Pointer[void], int32, Pointer[void], int32, num64, Pointer[void], int32) returns void
    is export is native(blas-lib) is symbol('cblas_zher2k') {*}

our sub xerbla(int32, CArray[int8], CArray[int8], ) returns void
    is export is native(blas-lib) is symbol('cblas_xerbla') {*}
