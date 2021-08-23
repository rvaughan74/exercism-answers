package Anagram;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(match);

sub match {
    my ( $word, @words ) = @_;
    my @result = ();
    my $sorted = join( '', sort( split( //, lc($word) ) ) );

    #Find similar words
    foreach my $check (@words) {
        if ( $word ne $check ) {
            my $compare = join( '', sort( split( //, lc($check) ) ) );
            if ( $sorted eq $compare ) {

                push( @result, $check );
            }
        }
    }
    return \@result;
}

1;
