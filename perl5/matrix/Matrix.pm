package Matrix;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<row column>;

sub extract_matrix {

  my $str    = shift;
  my @matrix = ();

  foreach my $line ( split( /\n/, $str ) ) {
    my @row = split( / /, $line );
    push( @matrix, \@row );
  }

  return \@matrix;
}

sub row {

  my ($input) = @_;
  my $ref     = extract_matrix( $input->{string} );
  my @matrix  = @$ref;
  my $row     = $input->{index} - 1;

  return $matrix[$row];
}

sub column {

  my ($input) = @_;
  my $ref     = extract_matrix( $input->{string} );
  my @matrix  = @$ref;
  my $col     = $input->{index} - 1;
  my @result  = ();

  for ( my $i = 0 ; $i < @matrix ; $i++ ) {
    push( @result, $matrix[$i][$col] );
  }

  return \@result;
}

1;
