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

        # The to prefix the http uri.
        prefix => '/apps/echo',

        # The prefix to the route can be found with internally.
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
