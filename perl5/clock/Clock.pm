package Clock;
use Moo;
use Carp qw(confess);

# rwp = read-write protected
has hour => (
  is      => 'rwp',
  trigger => \&_sane_hour
);
has minute => (
  is      => 'rwp',
  trigger => \&_sane_minute
);

sub _sane_hour {
  my ( $self, $hour, $old_hour ) = @_;
  $self->{hour} = $self->{hour} % 24;
}

sub _sane_minute {
  my ( $self, $minute, $old_minute ) = @_;
  my $remainder = $minute % 60;
  my $hours     = ( $minute - $remainder ) / 60;    #Convert to hours
  $self->{hour} += $hours;
  $self->{minute} = $remainder;
  _sane_hour($self);
}

sub time {
  my ($self) = @_;

  return sprintf( "%02d:%02d", $self->{hour}, $self->{minute} );
}

sub add_minutes {
  my ( $self, $amount ) = @_;
  _sane_minute( $self, $self->{minute} + $amount );
  return $self;
}

sub subtract_minutes {
  my ( $self, $amount ) = @_;
  _sane_minute( $self, $self->{minute} - $amount );
  return $self;
}

1;
