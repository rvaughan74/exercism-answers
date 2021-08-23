package AllYourBase;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(convert_base);

sub to_decimal {
    my ( $radits_ref, $base ) = @_;
    my $pow     = 0;
    my $decimal = 0;

    foreach my $radit ( reverse(@$radits_ref) ) {
        if ( $radit < 0 ) {
            die("negative digit not allowed");
        }
        if ( $radit >= $base ) {
            die("digit equal of greater than the base");
        }

        $decimal += $radit * ( $base**$pow );
        $pow++;
    }

    return $decimal;
}

sub from_decimal {
    my ( $decimal, $base ) = @_;

    my $result    = undef;
    my $quotient  = sprintf( "%d", $decimal / $base );
    my $remainder = $decimal % $base;
    my @radits    = ($remainder);

    while ( $quotient > 0 ) {

        my $old_quotient = $quotient;
        $quotient  = sprintf( "%d", $old_quotient / $base );
        $remainder = $old_quotient % $base;
        push( @radits, $remainder );
    }

    @radits = reverse(@radits);
    $result = \@radits;

    return $result;
}

sub convert_base {
    my ( $arr_ref, $in_base, $out_base ) = @_;

    if ( $in_base <= 1 || $out_base <= 1 ) {
        die("base must be greater than 1");
    }

    my $result  = undef;
    my $decimal = to_decimal( $arr_ref, $in_base );    #convert to decimal

    #convert to out_base
    $result = from_decimal( $decimal, $out_base );

    return $result;

}

1;
