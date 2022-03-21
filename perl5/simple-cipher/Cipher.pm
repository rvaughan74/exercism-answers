package Cipher;

use strict;
use warnings;
use Data::Dumper;

sub new {

  my ( $class, $key ) = @_;

  if ( !defined($key) ) {

    #No key passed generate a as default 100 times.

    foreach my $i ( 0 .. 99 ) {

      $key .= "a";
    }
  }
  else {

    #Bad key checks

    if ( $key eq "" || $key =~ /[A-Z]/ || $key =~ /[0-9]/ ) {

      #throw a hissy

      die "ArgumentError";
    }
  }

  my $self = bless { "key" => $key }, $class;
}

sub genkeyarray {

  my $start = shift;
  my @key   = ( $start .. "z" );

  if ( $start ne "a" ) {

    push( @key, ( "a" .. chr( ord($start) - 1 ) ) );
  }

  return @key;
}

sub encode {

  my ( $self, $plaintext ) = @_;

  $plaintext = lc($plaintext); #Normalize the plaintext: lowercase
  $plaintext =~ s/[^a-z]//g;   #Normalize the plaintext: no non-alpha characters

  my @plain      = ( "a" .. "z" );
  my @keychars   = split( //, $self->{"key"} );
  my @plainchars = split( //, $plaintext );
  my $result     = "";

  for ( my $i = 0 ; $i < @plainchars ; $i++ ) {

    my @key  = genkeyarray( $keychars[$i] );
    my %conv = map { $plain[$_] => $key[$_] } ( 0 .. 25 );

    $result .= $conv{ $plainchars[$i] };
  }

  return $result;
}

sub decode {

  my ( $self, $cipher ) = @_;

  my @plain       = ( "a" .. "z" );
  my @keychars    = split( //, $self->{"key"} );
  my @cipherchars = split( //, $cipher );
  my $result      = "";

  for ( my $i = 0 ; $i < @cipherchars ; $i++ ) {

    my @key  = genkeyarray( $keychars[$i] );
    my %conv = map { $key[$_] => $plain[$_] } ( 0 .. 25 );

    $result .= $conv{ $cipherchars[$i] };
  }

  return $result;
}

1;
