package Raindrops;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(raindrop);

sub raindrop {
    my ($number) = @_;
    my %factors  = ();
    my $result   = "";

    for ( my $i = 1 ; $i <= $number ; $i++ ) {

        #A factor divides evenly so no remainder from modulus
        if ( $number % $i == 0 ) {
            $factors{$i} = 1;    #Find a factor add it to the %factors hash.
        }
    }

    #If the factors we want to convert exist in %factors
    #add the appropriate string to the result.

    if ( $factors{3} ) {
        $result .= "Pling";
    }

    if ( $factors{5} ) {
        $result .= "Plang";
    }

    if ( $factors{7} ) {
        $result .= "Plong";
    }

    #If nothing has been added to the result, the result is "$number".

    if ( $result eq "" ) {
        $result = "$number";
    }

    return $result;
}

1;
