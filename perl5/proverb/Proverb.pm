package Proverb;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(proverb);

sub proverb {
    my ( $arr_ref, $qualifier ) = @_;
    my @words = @$arr_ref;

    if ( @words < 2 ) {
        die("more than one word needed");
    }

    my $result = "";
    my $orig   = $words[0];

    for ( my $i = 0 ; $i < $#words ; $i++ ) {

        my $next = $i + 1;
        $result .= "For want of a $words[$i] the $words[$next] was lost.\n";
    }

    $result .= "And all for the want of a ";

    if ($qualifier) {

        $result .= "$qualifier ";
    }

    $result .= "$orig.";

    return $result;
}

1;
