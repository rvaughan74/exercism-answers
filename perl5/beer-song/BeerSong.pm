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
    my @parts  = ();

    for ( my $i = 0 ; $i < $verses ; $i++ ) {

        my $line = "";

        if ( $bottles > 1 ) {

            $line .=
"$bottles bottles of beer on the wall, $bottles bottles of beer.\n";
        }
        elsif ( $bottles == 1 ) {

            $line .=
              "$bottles bottle of beer on the wall, $bottles bottle of beer.\n";
        }
        elsif ( $bottles == 0 ) {

            $line .=
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

        $line .= $next;
        push( @parts, $line );
        $bottles--;
    }

    $result = join( "\n\n", @parts );

    return $result;
}

1;
