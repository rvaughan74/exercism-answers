package House;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<recite>;

sub recite {

  my ($input) = @_;
  my $start   = $$input{startVerse};
  my $end     = $$input{endVerse};
  my @results = ();
  my %verses  = (
    1  => "house",
    2  => "malt that lay in the",
    3  => "rat that ate the",
    4  => "cat that killed the",
    5  => "dog that worried the",
    6  => "cow with the crumpled horn that tossed the",
    7  => "maiden all forlorn that milked the",
    8  => "man all tattered and torn that kissed the",
    9  => "priest all shaven and shorn that married the",
    10 => "rooster that crowed in the morn that woke the",
    11 => "farmer sowing his corn that kept the",
    12 => "horse and the hound and the horn that belonged to the"
  );

  foreach my $i ( ( $start .. $end ) ) {

    my @contents = ();

    foreach my $key ( reverse( 1 .. $i ) ) {

      push( @contents, $verses{$key} );
    }

    my $content = join( " ", @contents );
    my $line    = "This is the $content that Jack built.";
    push( @results, $line );
  }

  return \@results;
}

1;
