#!/usr/bin/env perl

use strict;
use warnings;
use Time::Piece;
use Time::Seconds;

sub is_leap_year {
    my ($year) = @_;
    return (($year % 4 == 0 && $year % 100 != 0) || ($year % 400 == 0));
}

my $is_end = 0;
my $is_leap = 0;
my $current_date = Time::Piece->strptime("1970-01-01", "%Y-%m-%d");

print $current_date->strftime("%Y-%m-%d"), "\n";

while (!$is_end) {
    $current_date += ONE_DAY;

    $is_leap = (!is_leap_year($current_date->year) &&
        $current_date->mon == 2 &&
        $current_date->mday == 29);

    next if $is_leap;

    print $current_date->strftime("%Y-%m-%d"), "\n";

    $is_end = ($current_date->year == 3000 &&
        $current_date->mon == 1 &&
        $current_date->mday == 1);
}
