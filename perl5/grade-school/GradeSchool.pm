package GradeSchool;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<roster>;

sub grade_sort {

  #Sort by grade then by name
  $a->{"grade"} <=> $b->{"grade"} || $a->{"name"} cmp $b->{"name"};
}

sub roster {

  my ( $students, $grade ) = @_;
  my @results = ();
  my @cols    = qw(name grade);

  #Convert $students to array of hashes, less confusing to sort.
  my @temp = map { my %h; @h{@cols} = @$_; \%h } @$students;
  @temp = sort grade_sort @temp;

  foreach my $student (@temp) {

    if ( !$grade || $grade == $$student{"grade"} ) {

      push( @results, $$student{"name"} );
    }
  }

  return \@results;
}

1;
