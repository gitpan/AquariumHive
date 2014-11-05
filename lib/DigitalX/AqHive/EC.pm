package DigitalX::AqHive::EC;
BEGIN {
  $DigitalX::AqHive::EC::AUTHORITY = 'cpan:GETTY';
}
$DigitalX::AqHive::EC::VERSION = '0.002';
use Digital::Driver;

with qw(
  DigitalX::AqHive
);

overload_to yScm => sub { $_ }, 'fixed';

1;

__END__

=pod

=head1 NAME

DigitalX::AqHive::EC

=head1 VERSION

version 0.002

=head1 DESCRIPTION

B<IN DEVELOPMENT, DO NOT USE YET>

See L<http://aquariumhive.com/> for now.

=head1 SUPPORT

IRC

  Join #AquariumHive on irc.freenode.net. Highlight Getty for fast reaction :).

Repository

  https://github.com/homehivelab/aquariumhive
  Pull request and additional contributors are welcome

Issue Tracker

  https://github.com/homehivelab/aquariumhive/issues

=head1 AUTHOR

Torsten Raudssus <torsten@raudss.us>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
