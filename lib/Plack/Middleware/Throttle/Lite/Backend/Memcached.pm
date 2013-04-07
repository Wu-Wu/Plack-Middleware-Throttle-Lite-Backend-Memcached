package Plack::Middleware::Throttle::Lite::Backend::Memcached;

# ABSTRACT: Memcache-driven storage backend for Throttle-Lite

use strict;
use warnings;
use Carp ();
use parent 'Plack::Middleware::Throttle::Lite::Backend::Abstract';
use Cache::Memcached::Fast;

# VERSION
# AUTHORITY

__PACKAGE__->mk_attrs(qw(mc));

sub init {
    my ($self, $args) = @_;

    my $_handle = Cache::Memcached::Fast->new($args);
    Carp::croak("Cannot get memcached handle") unless keys %{ $_handle->server_versions };

    $self->mc($_handle);
}

sub increment {
    my ($self) = @_;

    $self->mc->set($self->cache_key, 1 + $self->reqs_done, 1 + $self->expire_in);
}

sub reqs_done {
    my ($self) = @_;

    $self->mc->get($self->cache_key) || 0;
}

1; # End of Plack::Middleware::Throttle::Lite::Backend::Memcached

__END__

=pod

=head1 SYNOPSYS

=head1 DESCRIPTION

=head1 METHODS/SUBROUTINES

=head1 BUGS

=head1 SEE ALSO

=cut
