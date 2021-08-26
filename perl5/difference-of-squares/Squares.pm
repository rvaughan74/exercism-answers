package Squares;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(new square_of_sum sum_of_squares difference);

sub new {

    my ( $class, $number ) = @_;
    my $self = bless { number => $number }, $class;
}

sub square_of_sum {
    my $self   = shift;
    my $result = 0;

    foreach my $i ( 1 .. $$self{number} ) {
        $result += $i;
    }

    return $result**2;
}

sub sum_of_squares {
    my $self   = shift;
    my $result = 0;

    foreach my $i ( 1 .. $$self{number} ) {
        $result += $i**2;
    }

    return $result;
}

sub difference {
    my $self           = shift;
    my $sum_of_squares = $self->sum_of_squares();
    my $square_of_sum  = $self->square_of_sum();

    return $square_of_sum - $sum_of_squares;
}

1;
