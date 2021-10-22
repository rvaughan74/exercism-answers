package TwelveDays;
use strict;
use warnings;
use Data::Dumper;
use Exporter qw<import>;
our @EXPORT_OK = qw<recite>;

my %gifts = (
    "first"  => "a Partridge in a Pear Tree",
    "second" => "two Turtle Doves, and a Partridge in a Pear Tree",
    "third" =>
      "three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "fourth" =>
"four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "fifth" =>
"five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "sixth" =>
"six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "seventh" =>
"seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "eighth" =>
"eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "ninth" =>
"nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "tenth" =>
"ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "eleventh" =>
"eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
    "twelfth" =>
"twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree",
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

        my $key = $keys{$day};

        my $str =
          "On the $key day of Christmas my true love gave to me: $gifts{$key}.";
        push( @results, $str );
    }
    return join( "\n", @results );
}

1;
