package Phrase;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(word_count);

sub word_count {
    my ($phrase) = @_;
    my %results = ();
    foreach my $word ( $phrase =~ /\w+/g ) {
        $results{ lc($word) } += 1;
    }
    return \%results;
}

1;
