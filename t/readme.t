use Test;
use NativeCall;
use OpenBLAS :DEFAULT, :enums;
plan 1;
srand(1233456789);

{
    my @a := CArray[num32].new;
    @a[$_] = rand for ^100;
    my @b := CArray[num32].new;
    @b[$_] = rand for ^100;
    is sdot(100, @a, 1, @b, 1), 26.5177345275879, "Basic sdsdot call works as promised";
}

{
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
}
