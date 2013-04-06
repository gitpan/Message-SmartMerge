use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'Message-SmartMerge';
all_from 'lib/Message/SmartMerge.pm';
author   q{Dana M. Diederich <diederich@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   #IRC        => 'irc://irc.perl.org/#Message-SmartMerge',
   homepage   => 'https://metacpan.org/module/Message::SmartMerge',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/dana/perl-Message-SmartMerge.git',
   bugtracker => 'https://github.com/dana/perl-Message-SmartMerge/issues',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
);

requires (
    'Message::Match' => 0,
    'Message::Transform' => 0,
);

install_as_cpan;
auto_install;
WriteAll;
