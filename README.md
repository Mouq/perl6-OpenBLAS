# OpenBLAS
A Perl6 NativeCall interface to [OpenBLAS](http://www.openblas.net/).

## Usage

Documentation is available at [http://netlib.org/blas/](http://netlib.org/blas/).

Hopefully this module will get more user-friendly as shaped arrays are better
understood and implemented in Rakudo.

```perl6
use NativeCall;
use OpenBLAS;

my @a := CArray[num32].new;
@a[$_] = rand for ^100;
my @b := CArray[num32].new;
@b[$_] = rand for ^100;
say sdot(100, @a, 1, @b, 1); # @a · @b
```

For many subroutines, certain arguments require an enum value.

Currently, this doesn't work right :( Investigation ongoing.

```perl6
my @a := CArray[num32].new; # 5 by 5
for ^(5*5) {
    # upper triangular matrix
    @a[$_] = $_ % 5 < $_ div 5 - 1
        ?? 0e0
        !! rand;
}

my @b := CArray[num32].new; # 7 by 5
@b[$_] = rand for ^(7*5);
for ^7 -> $row {
    say ($row == 3 ?? '@b = ' !! '     '),
        (^5).map(-> $col { @b[$row*5+$col] });
}

# @b := 5 * @b * @a**T, and @b is now a 7 by 5 matrix:
strmm(MajorOrder::Row, Side::Right, Uplo::Upper, Transpose::Trans, Diag::NonUnit,
      7, 5, 5e0, @a, 5, @b, 7);

for ^7 -> $row {
    say ($row == 3 ?? '@b = ' !! '     '),
        (^5).map(-> $col { @b[$row*5+$col] });
}
```

## Troubleshooting

Make sure libopenblas is in your `LD_LIBRARY_PATH`.
