package RNA;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<to_rna>;

sub to_rna {

  my ($dna) = @_;
  my %convert = (
    "A" => "U",
    "C" => "G",
    "G" => "C",
    "T" => "A"
  );

  return join( "", map( $convert{$_}, split( //, $dna ) ) );
}

1;
