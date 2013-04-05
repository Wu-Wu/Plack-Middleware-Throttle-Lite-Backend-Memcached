package Plack::Middleware::Throttle::Lite::Backend::Memcached;

# ABSTRACT: Memcache-driven storage backend for Throttle-Lite

use strict;
use warnings;
use feature ':5.10';
use Carp ();
use parent 'Plack::Middleware::Throttle::Lite::Backend::Abstract';
use Cache::Memcached::Fast;

# VERSION
# AUTHORITY

__PACKAGE__->mk_attrs(qw(mc));

sub init {
    my ($self, $args) = @_;
}

sub increment {
    my ($self) = @_;
}

sub reqs_done {
    my ($self) = @_;
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
