package SpaceAge;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(
  new seconds
  on_mercury on_venus on_earth
  on_mars on_jupiter on_saturn
  on_uranus on_neptune
);

my %ORBITS = (
    earth   => 31557600,
    mercury => 31557600 * 0.2408467,
    venus   => 31557600 * 0.61519726,
    mars    => 31557600 * 1.8808158,
    jupiter => 31557600 * 11.862615,
    saturn  => 31557600 * 29.447498,
    uranus  => 31557600 * 84.016846,
    neptune => 31557600 * 164.79132
);

sub new {

    my ( $class, $seconds ) = @_;
    my $self = bless {
        seconds => $seconds,
        earth   => sprintf( "%.2f", $seconds / $ORBITS{earth} ),
        mercury => sprintf( "%.2f", $seconds / $ORBITS{mercury} ),
        venus   => sprintf( "%.2f", $seconds / $ORBITS{venus} ),
        mars    => sprintf( "%.2f", $seconds / $ORBITS{mars} ),
        jupiter => sprintf( "%.2f", $seconds / $ORBITS{jupiter} ),
        saturn  => sprintf( "%.2f", $seconds / $ORBITS{saturn} ),
        uranus  => sprintf( "%.2f", $seconds / $ORBITS{uranus} ),
        neptune => sprintf( "%.2f", $seconds / $ORBITS{neptune} )
      },
      $class;
}

sub seconds {

    my $self = shift;
    return $self->{seconds};
}

sub on_mercury {

    my $self = shift;
    return $self->{mercury};
}

sub on_venus {

    my $self = shift;
    return $self->{venus};
}

sub on_earth {

    my $self = shift;
    return $self->{earth};
}

sub on_mars {

    my $self = shift;
    return $self->{mars};
}

sub on_jupiter {

    my $self = shift;
    return $self->{jupiter};
}

sub on_saturn {

    my $self = shift;
    return $self->{saturn};
}

sub on_uranus {

    my $self = shift;
    return $self->{uranus};
}

sub on_neptune {

    my $self = shift;
    return $self->{neptune};
}

1;
