# Declare package 'Leap'
package Leap;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<is_leap_year>;

sub is_leap_year {
    my ($year) = @_;
    my $result = 0;
    if ( $year % 4 == 0 ) {
        if ( $year % 100 != 0 ) {
            $result = 1;
        }
        elsif ( $year % 400 == 0 ) {
            $result = 1;
        }
    }
    return $result;
}

1;
