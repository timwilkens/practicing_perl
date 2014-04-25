#!/usr/bin/perl

use strict;
use warnings;

# Perl implementation of the 'fold' function found in many functional languages
# Can be used to compute the sum of a list, factorials, find largest item, etc...

my $sum = foldr(sub{$_[0] + $_[1]}, (1 .. 10));
my $factorial = foldr(sub{$_[0] * $_[1]}, (1 .. 10));
my $largest = foldr(sub{$_[0] > $_[1] ? $_[0] : $_[1]}, (1 .. 10));

sub foldr {
  my ($func, @args) = @_;
  my $a = $args[0];

  for (my $i = 1; $i < scalar(@args); $i++) {
    $a = $func->($a, $args[$i]);
  }
  $a;
}
