package Accumulate;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<accumulate>;

sub accumulate {
    my ( $list, $func ) = @_;

    foreach my $n (@$list) {
        $n = $func->($n);
    }

    return $list;
}

1;
