package Triangle;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<is_equilateral is_isosceles is_scalene>;

sub equality {
  my (@sides) = @_;

  my @perms = (
    [ $sides[0], $sides[1], $sides[2] ],
    [ $sides[1], $sides[2], $sides[0] ],
    [ $sides[0], $sides[2], $sides[1] ]
  );

  my $result = 1;

  foreach my $p (@perms) {
    $result = $result && ( $$p[0] + $$p[1] >= $$p[2] );
  }

  return $result;
}

sub is_equilateral {

  my ($triangle) = @_;
  my %sides = ();

  foreach my $key (@$triangle) {

    if ( $key == 0 ) {

      return 0;
    }

    if ( !$sides{$key} ) {

      $sides{$key} = 0;
    }

    $sides{$key}++;
  }

  my @count = keys(%sides);

  return @count == 1 && $sides{ $count[0] } == 3;
}

sub is_isosceles {

  my ($triangle) = @_;
  my %sides = ();

  foreach my $key (@$triangle) {

    if ( $key == 0 ) {

      return 0;
    }

    if ( !$sides{$key} ) {

      $sides{$key} = 0;
    }

    $sides{$key}++;
  }

  if ( !equality(@$triangle) ) {

    return 0;
  }

  foreach my $key ( keys(%sides) ) {

    if ( $sides{$key} >= 2 ) {

      return 1;
    }
  }

  return 0;
}

sub is_scalene {

  my ($triangle) = @_;
  my %sides = ();

  foreach my $key (@$triangle) {

    if ( $key == 0 ) {

      return 0;
    }

    if ( !$sides{$key} ) {

      $sides{$key} = 0;
    }

    $sides{$key}++;
  }

  if ( !equality(@$triangle) ) {

    return 0;
  }

  foreach my $key ( keys(%sides) ) {

    if ( $sides{$key} > 1 ) {

      return 0;
    }
  }

  return 1;
}

1;
