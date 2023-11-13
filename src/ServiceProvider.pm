package Echo::ServiceProvider;

use parent qw(
    Foundation::ServiceProvider
);

use strict;
use warnings;

use Foundation::Appify;

# The parent service provider handles the default behaviour.
# Add additional functionality in here.

sub boot {
    my $self = shift;

    $self->SUPER::boot();

    macro('Models::User', 'isAdmin', sub {
        return 0;
    });
}

sub gateway {
    my $self = shift;

    my $gateway = $self->SUPER::gateway();

    $gateway->{name} = lc $gateway->{name};

    return $gateway;
}

1;
