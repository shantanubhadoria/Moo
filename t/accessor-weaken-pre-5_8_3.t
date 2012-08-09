use strictures 1;
use Moo::_Utils;

BEGIN {
  no warnings 'redefine';
  *Moo::_Utils::lt_5_8_3 = sub () { 1 };
}

(my $real_test = __FILE__) =~ s/-pre-5_8_3//;

do $real_test;
die $@ if $@;
die $! if $!;
