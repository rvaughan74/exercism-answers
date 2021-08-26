package Prime;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(factors);

sub is_prime {
    my ($number) = @_;
    my $result = 1;

    for ( my $i = 2 ; $i <= $number ; $i++ ) {

        if ( $number % $i == 0 && $i != $number ) {

            $result = 0;
        }
    }

    return $result;
}

sub factors {
    my ($number) = @_;

    my @results = ();

    for ( my $i = 2 ; $i <= $number ; $i++ ) {

        if ( $number % $i == 0 ) {

            if ( is_prime($i) ) {

                push( @results, $i );
                $number /= $i;
                my $curse = factors($number);
                push( @results, @$curse );
                last;
            }
        }
    }

    return \@results;
}

1;
