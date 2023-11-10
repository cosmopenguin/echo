package Echo::ServiceProvider;

use parent qw(
    Foundation::ServiceProvider
);

use strict;
use warnings;

# The parent service provider handles the default behaviour.
# Add additional functionality in here.

sub gateway {
    my $self = shift;

    my $gateway = $self->SUPER::gateway();

    $gateway->{name} = lc $gateway->{name};

    return $gateway;
}

1;
