package BeerSong;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<sing>;

sub sing {
    my ($input) = @_;

    my $bottles = $$input{bottles};
    my $verses  = $$input{verses};

    my $result = "";

    for ( my $i = 0 ; $i < $verses ; $i++ ) {

        if ( $bottles > 1 ) {

            $result .=
"$bottles bottles of beer on the wall, $bottles bottles of beer.\n";
        }
        elsif ( $bottles == 1 ) {

            $result .=
              "$bottles bottle of beer on the wall, $bottles bottle of beer.\n";
        }
        elsif ( $bottles == 0 ) {

            $result .=
              "No more bottles of beer on the wall, no more bottles of beer.\n";
            $bottles = 100;
        }

        my $j = $bottles - 1;
        my $next =
          "Take one down and pass it around, $j bottles of beer on the wall.";

        if ( $j == 0 ) {

            $next =
"Take it down and pass it around, no more bottles of beer on the wall.";
        }
        elsif ( $j == 1 ) {

            $next =
"Take one down and pass it around, $j bottle of beer on the wall.";
        }
        elsif ( $j == 99 ) {

            $next =
"Go to the store and buy some more, 99 bottles of beer on the wall.";
        }

        $result .= $next;

        if ( $i + 1 < $verses ) {
            $result .= "\n\n";
        }
        $bottles--;
    }

    return $result;
}

1;
