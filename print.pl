#!/usr/bin/perl
use warnings;
use strict;

print "Here's some text\n";
print STDERR "Here's some text\n";
print STDOUT "Here's some text\n";

open FH, ">", "file.txt" or die $!;

print FH "Here's some text\n";
