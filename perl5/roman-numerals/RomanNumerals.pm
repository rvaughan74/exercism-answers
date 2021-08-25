package RomanNumerals;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(to_roman);

my %roman = (
    1000 => "M",
    900  => "CM",
    500  => "D",
    400  => "CD",
    100  => "C",
    90   => "XC",
    50   => "L",
    40   => "XL",
    10   => "X",
    9    => "IX",
    5    => "V",
    4    => "IV",
    1    => "I",
);

my @key_order = qw(1000 900 500 400 100 90 50 40 10 9 5 4 1);

sub to_roman {
    my ($number) = @_;

    my $result = "";

    while ( $number > 0 ) {

        for my $key (@key_order) {

            while ( $number >= $key ) {

                $number -= $key;
                $result .= $roman{$key};
            }
        }
    }

    return $result;
}

1;
