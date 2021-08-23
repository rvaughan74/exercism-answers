package ETL;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform {
    my ($data) = @_;
    my %old    = %$data;
    my %result = ();

    foreach my $old_key ( keys(%old) ) {
        my $old_values = $old{$old_key};

        foreach my $old_value (@$old_values) {
            $result{ lc($old_value) } = $old_key;
        }
    }

    return \%result;
}

1;
