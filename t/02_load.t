#! perl

use strict;
use warnings;
use Test::More;

if ( -d "t" ) {
    chdir "t";
    $0 =~ s;(^|/)t/;$1;;
}

use lib "../script";

$::__EMBEDDED__ = 1;

my $test;

++$test; require_ok("chordpro.pl");
++$test; use_ok("Music::ChordPro");
++$test; use_ok("Music::ChordPro::Config");
++$test; use_ok("Music::ChordPro::Songbook");
++$test; use_ok("Music::ChordPro::Output::Debug");
++$test; use_ok("Music::ChordPro::Output::Text");
++$test; use_ok("Music::ChordPro::Output::ChordPro");
++$test; use_ok("Music::ChordPro::Output::PDF");

done_testing($test);