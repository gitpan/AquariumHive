package AquariumHive::State;
BEGIN {
  $AquariumHive::State::AUTHORITY = 'cpan:GETTY';
}
$AquariumHive::State::VERSION = '0.002';
use Moo;

our @attributes;

for my $pwm_no (1..6) {
  my $pwm = 'pwm'.$pwm_no;
  push @attributes, $pwm;
  has $pwm, (
    is => 'rw',
  );
}

for my $sensor_row (1..2) {
  for my $sensor (qw( temp ph orp ec )) {
    my $attr = $sensor.$sensor_row;
    push @attributes, $attr;
    has $attr, (
      is => 'rw',
    );
  }
}

sub data {
  my ( $self ) = @_;
  return {map {
    $_, $self->$_()
  } @attributes};
}

sub update {
  my ( $self, $data ) = @_;
  for (@attributes) {
    $self->$_($data->{$_}) if defined $data->{$_};
  }
  return $self;
}

1;

__END__

=pod

=head1 NAME

AquariumHive::State

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
