package TDD::Stack;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $fields = {
        '_stack' => []
    };
    return bless $fields, $class;
}

sub is_empty {
    my $self = shift;
    return @{$self->{_stack}} == 0;
}

sub s_push {
    my ($self, $element) = @_;
    push @{$self->{_stack}}, $element;
    return 1;
}

sub s_pop {
    my $self = shift;
    return pop @{$self->{_stack}};
}

1;
