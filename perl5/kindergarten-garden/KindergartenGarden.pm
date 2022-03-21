package KindergartenGarden;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<plants>;

sub translate {
  my $str    = shift;
  my %plants = ( G => "grass", C => "clover", R => "radishes", V => "violets" );
  my @results = ();

  my @chars = split( //, $str );

  foreach my $chr (@chars) {

    push( @results, $plants{$chr} );
  }

  return \@results;
}

sub plants {

  my ($input) = @_;
  my @ORDER = qw(
    Alice
    Bob
    Charlie
    David
    Eve
    Fred
    Ginny
    Harriet
    Ileana
    Joseph
    Kincaid
    Larry
  );
  my $MAXLENGTH = 24;
  my %students  = map { $_ => "" } @ORDER;
  my $regex     = join( "", map( "(?<$_>.{2})", @ORDER ) );

  for my $line ( split( /\n/, $input->{diagram} ) ) {

    my $key = $input->{student};

    if ( length($line) < $MAXLENGTH ) {

      my $diff = $MAXLENGTH - length($line);

      for ( my $i = 0 ; $i < $diff ; $i++ ) {

        $line .= " ";
      }
    }

    $line =~ /$regex/;

    $students{ $input->{student} } .= $+{ $input->{student} };
  }

  return translate( $students{ $input->{student} } );
}

1;
