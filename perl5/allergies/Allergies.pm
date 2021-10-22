package Allergies;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<allergic_to list_allergies>;

my %LOOKUP = (
    1   => "eggs",
    2   => "peanuts",
    4   => "shellfish",
    8   => "strawberries",
    16  => "tomatoes",
    32  => "chocolate",
    64  => "pollen",
    128 => "cats",
);

my $MAX_SCORE = 256;

my @KEY_ORDER = qw(128 64 32 16 8 4 2 1);

sub allergic_to {

    my ($input) = @_;

    #Find everything the score says there's an allergy to.
    my @allergies = @{ list_allergies( $input->{"score"} ) };
    my $find      = $input->{"item"};

    #Create a lookup for those allergies
    my %allergy_to = map { $_ => 1 } @allergies;

    #If we aren't allergic, make it explicit.
    #DO NOT rely on undef being false for the testing method.
    if ( !$allergy_to{$find} ) {
        $allergy_to{$find} = 0;
    }

    #Send off the result.
    return $allergy_to{$find};
}

sub list_allergies {

    my ($score) = @_;
    my @result = ();

    $score = $score % $MAX_SCORE;    #Ignore allergens above $MAX_SCORE

    for my $key (@KEY_ORDER) {       #Go through all known allergens.

        if ( $score >= $key ) {      #If we find an allergen add it to the list.

            push( @result, $LOOKUP{$key} );
            $score -= $key;
        }
    }

    return \@result;                 #Return the result.
}

1;
