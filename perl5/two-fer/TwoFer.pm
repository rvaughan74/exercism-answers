package TwoFer;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(two_fer);

sub two_fer {
    my ($name) = @_;
    my $who = "you";
    if ($name) {
        $who = $name;
    }
    return "One for $who, one for me.";
}

1;
