package NucleotideCount;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<count_nucleotides>;

sub count_nucleotides {

  my ($strand) = @_;

  if ( $strand =~ /[^acgt]/i ) {

    die "Invalid nucleotide in strand";
  }

  my @A = ( $strand =~ /A/gi );
  my @C = ( $strand =~ /C/gi );
  my @G = ( $strand =~ /G/gi );
  my @T = ( $strand =~ /T/gi );

  return {
    A => scalar @A,
    C => scalar @C,
    G => scalar @G,
    T => scalar @T
  };
}

1;
