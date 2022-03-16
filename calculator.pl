#!/usr/bin/perl

use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

calculator();

sub calculator{
my @nums;
my $input;
my $operator;
my $result;
my $error;
my @errors;

print "Please enter 2 number\n";
print "First number: \n";
chomp($input = <>);
push(@nums,$input);

print "Second number: \n";
chomp($input = <>);
push(@nums,$input);

if(!looks_like_number($nums[0])){ #check if its a number
$error = "$nums[0] is not a number\n";
push(@errors,$error);
}
if(!looks_like_number($nums[1])){ #check if its a number
$error = "$nums[1] is not a number\n";
push(@errors,$error);
}

print "Please enter the operation (+,-,*,/): \n";
chomp($operator = <>);


if($operator eq '+'){
$result = $nums[0] + $nums[1];
}
elsif($operator eq '-') {
$result = $nums[0] - $nums[1];
}
elsif($operator eq '*') {
$result = $nums[0] * $nums[1];
}
elsif($operator eq '/') {
if($nums[1] == 0){
$error = "ERROR! Cannot divide by 0\n";
push(@errors,$error);
}else{
$result = $nums[0] / $nums[1];
}
}
else{
$error = "Invalid input! please try again entering only (+,-,*,/) \n";
push(@errors,$error);
}

push(@nums,$result);
if($error){
	print "@errors";
	print "ERROR! Cannot calculate $nums[0] $operator $nums[1]\n";
}else{
print "the result is: $nums[0] $operator $nums[1] = $result\n";
}

return @nums;

}







