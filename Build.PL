#!/usr/bin/env perl
use Module::Build;

my $build = Module::Build->new(
    module_name   => 'DBIx::Fast',
    license       => 'perl_5',
    dist_author   => 'Sergio Iglesias <sergioxz@cpan.org>',
    dist_abstract =>
      'DBIx::Fast - Object Relational Mapping for the lazy programmer',
    requires => {
        'perl'                => '5.16.3',
        'Moo'                 => 0,
        'SQL::Abstract::More' => 0,
        'Import::Into'        => 0,
    },
    test_requires => {
        'Test::MockObject' => 0,
        'Test::Exception'  => 0,
        'Test::More'       => 0,
    },
    meta_merge => {
        resources => {
            bugtracker =>
              'https://github.com/sergiotarxz/Perl-DBIx-Fast/issues',
            repository =>
              'https://github.com/sergiotarxz/Perl-DBIx-Fast',
        }
    },
);
$build->create_build_script;
