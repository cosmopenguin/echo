#!/usr/bin/perl

use strict;
use warnings;

use Http::Route;
use Echo::Http::Controllers::Controller;

Http::Route::group({

    middlewares => [

        'Http::Middlewares::Auth',

    ],

}, sub {

    # Routes within this scope require the visitor to be signed in.

    Http::Route::group({

        # The prefix of the http route.
        prefix => '/apps/echo',

        # The prefix of the route name.
        as => 'apps.echo.',

    }, sub {
        
        Http::Route::get('/', sub {

            my $request = shift;

            # TODO: Implement default controller routing instead of creating
            # TODO: an instance of the controller class.

            return Echo::Http::Controllers::Controller->new()->welcome(
                $request,
            );

        }),

    });

});
