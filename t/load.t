#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

for (qw(
  DigitalX::AqHive
  DigitalX::AqHive::EC
  DigitalX::AqHive::Temp
  DigitalX::AqHive::pH
  DigitalX::AqHive::ORP
  AquariumHive::Simulator
  AquariumHive::State
  App::AquariumHive::Plugin::Cron
  App::AquariumHive::Plugin::GemBird
  App::AquariumHive::Plugin::AqHive
  App::AquariumHive::Plugin::GemBird::Socket
  App::AquariumHive::Plugin::AqHive::State
  App::AquariumHive::Role
  App::AquariumHive::DB
  App::AquariumHive::LogRole
  App::AquariumHive::DB::ResultSet
  App::AquariumHive::DB::Result
  App::AquariumHive::Tile
  App::AquariumHive
  AquariumHive
)) {
  use_ok($_);
}

done_testing;

