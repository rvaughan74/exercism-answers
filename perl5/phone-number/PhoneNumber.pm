package PhoneNumber;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(clean_number);

sub clean_number {
    my ($number) = @_;

    #Check inital validity, no letters, no punctuation
    my $punct = q(!@#$%^&*);

    if ( $number =~ /[a-zA-Z]/g ) {

        die("letters not permitted");
    }

    if ( $number =~ /[$punct]/g ) {

        die("punctuations not permitted");
    }

    #Clean spaces, periods, -, +, ()
    my $result = $number;
    $result =~ s/[\s\.-]//g;
    $result =~ s/\+//g;
    $result =~ s/[\(\)]//g;

    #Check number length
    if ( length($result) < 10 ) {

        die("incorrect number of digits");
    }

    if ( length($result) > 11 ) {

        die("more than 11 digits");
    }

    if ( length($result) == 11 ) {
        if ( !( $result =~ /^1/ ) ) {

            die("11 digits must start with 1");
        }

        #Remove Country Code
        $result = substr( $result, 1 );
    }

    #Validate area code and exchange code
    if ( $result =~ /(\d{3})(\d{3})(\d{4})/ ) {
        my $area       = $1;
        my $exchange   = $2;
        my $subscriber = $3;

        if ( $area =~ /^0/ ) {

            die("area code cannot start with zero");
        }
        if ( $area =~ /^1/ ) {

            die("area code cannot start with one");
        }
        if ( $exchange =~ /^0/ ) {

            die("exchange code cannot start with zero");
        }
        if ( $exchange =~ /^1/ ) {

            die("exchange code cannot start with one");
        }
    }

    return $result;
}

1;
