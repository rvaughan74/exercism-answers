package Series;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(
  new slice
);

sub new {

    my ( $class, $number ) = @_;
    my $self = bless { number => $number }, $class;
}

sub slice {

    my ( $self, $size ) = @_;

    my $n_digits = length( $self->{number} );

    if ( $size > $n_digits ) {

        die("ArgumentError");
    }

    my @result = ();

    for ( my $i = 0 ; $i < $n_digits - ( $size - 1 ) ; $i++ ) {

        my @slice = ();
        push( @slice,
            map( int, split( //, substr( $self->{number}, $i, $size ) ) ) );
        push( @result, \@slice );
    }

    return \@result;
}

1;
