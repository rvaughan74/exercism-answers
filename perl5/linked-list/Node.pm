package Node;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<new data next set_next prev set_prev>;

sub new {

    my $class = shift;
    my $data  = shift;
    my $prev  = shift;
    my $next  = shift;
    my $self  = bless {
        d => $data,    #Element data
        n => $next,    #next element
        p => $next     #previous element
    }, $class;
}

sub data {

    my $self = shift;
    return $self->{d};
}

sub next {

    my $self = shift;
    return $self->{n};
}

sub set_next {

    my ( $self, $next ) = @_;
    $self->{n} = $next;
}

sub prev {

    my $self = shift;
    return $self->{p};
}

sub set_prev {

    my ( $self, $prev ) = @_;
    $self->{p} = $prev;
}

1;
