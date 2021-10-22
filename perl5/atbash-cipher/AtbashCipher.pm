package AtbashCipher;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<encode_atbash decode_atbash>;

sub encode_atbash {
    my ($phrase) = @_;
    my @atoz     = ( "a" .. "z" );
    my @zota     = reverse(@atoz);
    my %encode   = map { $atoz[$_] => $zota[$_] } ( 0 .. 25 );
    my $encoded  = "";
    my @parts    = ();

    for my $n ( 0 .. 9 ) {

        $encode{$n} = $n;
    }

    $phrase = lc($phrase);          #We're dealing entirely in lowercase letters
    $phrase =~ s/[\s[:punct:]]//g;  #Strip whitespace and punctuation.

    for my $c ( split( //, $phrase ) ) {    #Encode the string.

        $encoded .= $encode{$c};
    }

    #Break the string up into groupings of 5 characters
    for ( my $i = 0 ; $i < length($encoded) ; $i += 5 ) {
        push( @parts, substr( $encoded, $i, 5 ) );
    }

    return join( " ", @parts );
}

sub decode_atbash {
    my ($phrase) = @_;
    my @atoz     = ( "a" .. "z" );
    my @zota     = reverse(@atoz);
    my %decode   = map { $zota[$_] => $atoz[$_] } ( 0 .. 25 );

    for my $n ( 0 .. 9 ) {
        $decode{$n} = $n;
    }

    $phrase = lc($phrase);
    chomp($phrase);
    $phrase =~ s/[\s[:punct:]]//g;

    my $result = "";

    for my $c ( split( //, $phrase ) ) {

        $result .= $decode{$c};
    }

    return $result;
}

1;
