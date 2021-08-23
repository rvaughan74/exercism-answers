package Grains;
use strict;
use warnings;
use bigint;
use Exporter 'import';
our @EXPORT_OK = qw(grains_on_square total_grains);

sub grains_on_square {
    my ($square) = @_;

    if ( $square > 64 || $square <= 0 ) {

        #Invalid square
        die "square must be between 1 and 64";
    }

    return 2**( $square - 1 );
}

sub total_grains {
    my $total  = 0;
    my $grains = 0;
    for ( my $i = 0 ; $i < 64 ; $i++ ) {
        $grains = 2**$i;
        $total += $grains;
    }
    return $total;
}

1;
