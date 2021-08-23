package Hamming;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hamming_distance);

sub hamming_distance {
    my ( $strand1, $strand2 ) = @_;
    if ( length($strand1) != length($strand2) ) {
        die("left and right strands must be of equal length");
    }

    my $hamming     = 0;                        #Hamming distance found
    my @strand1_chr = split( //, $strand1 );    #Characters for $strand1
    my @strand2_chr = split( //, $strand2 );    #Characters for $strand2

    #Calculate the distance of the strands
    for ( my $i = 0 ; $i < length($strand1) ; $i++ ) {
        if ( $strand1_chr[$i] ne $strand2_chr[$i] ) {
            $hamming++;
        }
    }
    return $hamming;
}

1;
