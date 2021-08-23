package Luhn;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(is_luhn_valid);

sub is_luhn_valid {
    my ($input) = @_;

    #Step one remove spaces
    my $work_number = $input;
    $work_number =~ s/ //g;

    #Step two validate input
    if ( !( $work_number =~ /^[0-9]{2,}$/ ) ) {

        return 0;
    }

    #Step three calculate
    my @digits = split( //, $work_number );
    my $sum    = 0;

    my $i = 1;
    foreach my $digit ( reverse(@digits) ) {

        if ( $i % 2 == 0 ) {    #Double every second digit

            $digit *= 2;
        }

        if ( $digit > 9 ) {     # If greater than 9 add parts of result

            my @parts = split( //, "$digit" );
            $digit = $parts[0] + $parts[1];
        }

        $sum += $digit;
        $i++;
    }

    #Step four evaluate result

    return $sum % 10 == 0;
}

1;
