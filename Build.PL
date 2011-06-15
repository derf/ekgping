#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

Module::Build->new(

	build_requires => {
		'Test::Compile' => 0,
		'Test::More' => 0,
		'Test::Pod' => 0,
	},
	dist_name => 'ekgping',
	dist_version_from => 'bin/ekgping',
	license => 'unrestricted',
	requires => {
		'perl' => '5.10.0',
	},
	share_dir => 'share',
	sign => 1,

)->create_build_script();
