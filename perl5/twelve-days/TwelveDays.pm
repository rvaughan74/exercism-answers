package TwelveDays;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<recite>;

my %gifts = (

    "first"    => "a Partridge in a Pear Tree",
    "second"   => "two Turtle Doves, and ",
    "third"    => "three French Hens, ",
    "fourth"   => "four Calling Birds, ",
    "fifth"    => "five Gold Rings, ",
    "sixth"    => "six Geese-a-Laying, ",
    "seventh"  => "seven Swans-a-Swimming, ",
    "eighth"   => "eight Maids-a-Milking, ",
    "ninth"    => "nine Ladies Dancing, ",
    "tenth"    => "ten Lords-a-Leaping, ",
    "eleventh" => "eleven Pipers Piping, ",
    "twelfth"  => "twelve Drummers Drumming, ",
);

my %keys = (
    1  => "first",
    2  => "second",
    3  => "third",
    4  => "fourth",
    5  => "fifth",
    6  => "sixth",
    7  => "seventh",
    8  => "eighth",
    9  => "ninth",
    10 => "tenth",
    11 => "eleventh",
    12 => "twelfth",
);

sub recite {

    my $in    = shift;
    my $start = $in->{"start"};
    my $end   = $in->{"end"};

    my @results = ();
    my @order   = ( $start .. $end );

    foreach my $day (@order) {

        my $key        = $keys{$day};
        my @day_gifts  = ();
        my @gift_order = reverse( 1 .. $day );
        for my $g_day (@gift_order) {
            push( @day_gifts, $gifts{ $keys{$g_day} } );
        }

        my $gift_str = join( "", @day_gifts );

        my $str =
          "On the $key day of Christmas my true love gave to me: $gift_str.";
        push( @results, $str );
    }
    return join( "\n", @results );
}

1;
