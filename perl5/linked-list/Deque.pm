package Deque;
use strict;
use warnings;
use FindBin qw($Bin);
use lib $Bin, "$Bin/local/lib/perl5";
use Node;
use Exporter qw<import>;
our @EXPORT_OK = qw<new push pop shift unshift>;

sub new {

    my $class = shift;
    my $node  = undef;
    my $self  = bless {
        n => $node    #reference to the nodes
    }, $class;
}

sub push {

    my ( $self, $data ) = @_;
    my $current = $self->{n};
    my $prev    = undef;

    if ( defined $current ) {

        while ( defined $current->next() ) {

            $prev    = $current;
            $current = $current->next();
        }

        my $next = Node->new( $data, $current );
        $current->set_next($next);
    }
    else {

        my $next = Node->new($data);
        $self->{n} = $next;
    }
}

sub pop {

    my $self    = shift;
    my $current = $self->{n};
    my $prev    = undef;
    my $data    = undef;

    if ( defined $current ) {

        while ( defined $current->next() ) {

            $prev    = $current;
            $current = $current->next();
        }

        $prev->{n}    = undef;
        $current->{p} = undef;
        $data         = $current->data();
        $current      = undef;
    }

    return $data;
}

sub shift {

    my $self    = shift;
    my $current = $self->{n};
    my $next    = undef;
    my $prev    = undef;
    my $data    = undef;

    if ( defined $current ) {

        $prev = $current;

        if ( defined $current->next() ) {

            $self->{n} = $current->next();
            $self->{n}->set_prev(undef);
            $prev->set_next(undef);
        }

        $data = $prev->data();
    }

    return $data;
}

sub unshift {

    my ( $self, $data ) = @_;

    if ( defined $self->{n} ) {

        my $node = Node->new( $data, undef, $self->{n} );
        $self->{n}->set_prev($node);
        $self->{n} = $node;
    }
    else {

        $self->{n} = Node->new( $data, undef, undef );
    }
}

1;
