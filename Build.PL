#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

Module::Build->new(

	build_requires => {
		'Module::Build' => '0.36',
		'Test::Compile' => 0,
		'Test::More' => 0,
		'Test::Pod' => 0,
	},
	dist_name => 'ekgping',
	dist_version_from => 'bin/ekgping',
	license => 'unrestricted',
	requires => {
		'perl' => '5.10.0',
		'File::ShareDir' => 0,
		'Getopt::Long' => 0,
		'IO::Handle' => 0,
		'IPC::Run' => 0,
		'SDL' => 2.400,
		'Term::Size' => 0,
		'Time::HiRes' => 0,
	},
	share_dir => 'share',
	sign => 1,

)->create_build_script();
