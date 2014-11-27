#! /usr/bin/env perl

use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok qw/TDD::Stack/;
}

subtest "new" => sub {
    my $stack = TDD::Stack->new();
    isa_ok($stack, "TDD::Stack");
};

subtest "is_empty" => sub {
    my $stack = TDD::Stack->new();
    ok($stack->is_empty, "nothing inserted");
};

subtest "push" => sub {
    my $stack = TDD::Stack->new();
    my $element = "hoge";
    $stack->s_push($element);
    ok(!$stack->is_empty, "after inserted");
};

subtest "push twice" => sub {
    my $stack = TDD::Stack->new();
    my $element = "hoge";
    my $element2 = "foo";
    $stack->s_push($element);
    $stack->s_push($element2);
    ok(!$stack->is_empty, "after inserted");
};

done_testing;
