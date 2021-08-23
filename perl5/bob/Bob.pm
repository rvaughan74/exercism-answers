# Declare package 'Bob'
package Bob;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(hey);

sub hey {
    my ($msg) = @_;
    my $response = "Whatever.";
    if ( $msg =~ /^\s*$/ ) {
        $response = "Fine. Be that way!";
    }
    else {
        if ( $msg =~ /\?\s*$/ ) {
            $response = "Sure.";
        }
        if ( $msg eq uc($msg) && $msg =~ /[A-Z]/ ) {
            $response = "Whoa, chill out!";
            if ( $msg =~ /\?\s*$/ ) {
                $response = "Calm down, I know what I'm doing!";
            }
        }
    }
    return $response;
}

1;
