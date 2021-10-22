package Sublist;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<compare_lists>;

sub compare_lists {
    my ($args) = @_;
    my $result = "unequal";

    my $ref     = $args->{"listOne"};
    my $listOne = join( ",", @$ref );
    $ref = $args->{"listTwo"};
    my $listTwo = join( ",", @$ref );

    if ( $listOne eq $listTwo ) {

        $result = "equal";
    }
    else {

        if ( $listTwo =~ /$listOne/ ) {

            $result = "sublist";
        }

        if ( $listOne =~ /$listTwo/ ) {

            $result = "superlist";
        }
    }

    return $result;
}

1;
