#!/usr/bin/perl

use strict;
use warnings;

use Getopt::Long;

# http://perldoc.perl.org/Getopt/Long.html


my $ay = '';	# option variable with default value (false)
my $bee = '';	# store a string
my @foo = ();	
my %myHash = {};

#Getopt::Long::Configure ("bundling");
#sintax longName|aliases=type{min,max} where type f float, i integer, s tring

GetOptions ('ay|a' => \$ay, 
            "bee|b=s" => \$bee, # array of strings
            'foo=s{2,4}' => \@foo, 
            'define=s' => \%myHash # --define key1=value1 key2=value2
            ) or die("Error in command line arguments\n"); 

print("$ay \n $bee \n @foo \n %myHash \n @ARGV");