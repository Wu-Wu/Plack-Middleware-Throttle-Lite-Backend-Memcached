use strict;
use warnings;
use Test::More;
use Plack::Middleware::Throttle::Lite::Backend::Memcached;

can_ok 'Plack::Middleware::Throttle::Lite::Backend::Memcached', qw(
    mc
    reqs_done
    increment
);

done_testing();
