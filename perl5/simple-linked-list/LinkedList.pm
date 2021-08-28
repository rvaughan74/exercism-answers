package LinkedList;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<new data next set_next from_array to_array reverse>;

sub new {

    my $class = shift;
    my $data  = shift;
    my $next  = shift;
    my $self  = bless {
        d => $data,    #Element data
        n => $next     #next element
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

sub from_array {

    my ( $self, $data ) = @_;

    my @array    = @$data;
    my $elements = undef;
    my $current  = undef;

    foreach my $elem (@array) {

        if ( !$current ) {

            $current  = LinkedList->new($elem);
            $elements = $current;
        }
        else {

            my $n = LinkedList->new($elem);
            $current->set_next($n);
            $current = $current->next();
        }
    }

    return $elements;
}

sub to_array {

    my $self    = shift;
    my $current = $self;
    my @results = ();

    while ($current) {
        push( @results, $current->data() );
        $current = $current->next();
    }

    return \@results;
}

sub reverse {

    my $self = shift;

    my $array_ref = $self->to_array();
    my @array     = reverse(@$array_ref);

    my $result = LinkedList->from_array( \@array );
    return $result;
}

1;
