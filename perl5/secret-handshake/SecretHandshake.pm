package SecretHandshake;
use strict;
use warnings;
use Exporter qw<import>;
use Data::Dumper;
our @EXPORT_OK = qw<handshake>;

sub handshake {

  my ($number) = @_;
  my $binary = sprintf( "%05b", $number );
  $binary =~ /(?<reverse>.)(?<jump>.)(?<eyes>.)(?<blink>.)(?<wink>.)/;
  my @results = (
    $+{wink}  ? "wink"            : (),
    $+{blink} ? "double blink"    : (),
    $+{eyes}  ? "close your eyes" : (),
    $+{jump}  ? "jump"            : ()
  );

  if ( $+{reverse} ) {

    @results = reverse(@results);
  }

  return \@results;
}

1;
