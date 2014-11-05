package App::AquariumHive::DB::Result;
BEGIN {
  $App::AquariumHive::DB::Result::AUTHORITY = 'cpan:GETTY';
}
$App::AquariumHive::DB::Result::VERSION = '0.002';
use Moo;
use namespace::clean;

extends 'DBIx::Class::Core';

$ENV{DBIC_NULLABLE_KEY_NOWARN} = 1;

with 'App::AquariumHive::LogRole';

1;

__END__

=pod

=head1 NAME

App::AquariumHive::DB::Result

=head1 VERSION

version 0.002

=head1 AUTHOR

Torsten Raudssus <torsten@raudss.us>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Torsten Raudssus.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
