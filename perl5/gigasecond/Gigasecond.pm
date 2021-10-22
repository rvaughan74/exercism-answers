package Gigasecond;
use strict;
use warnings;
use Time::Piece;
use Exporter qw<import>;
our @EXPORT_OK = qw<add_gigasecond>;

sub add_gigasecond {
    my ($time) = @_;

    my $work = undef;

    if ( !( $time =~ /T/ ) ) {

        $work = Time::Piece->strptime( $time, '%Y-%m-%d' );
    }
    else {

        $work = Time::Piece->strptime( $time, '%FT%T' );
    }

    my $result = $work + 1000000000;

    return $result->strftime('%FT%T');
}

1;
