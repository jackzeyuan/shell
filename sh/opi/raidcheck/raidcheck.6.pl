#!/usr/bin/perl
#
# Copyright (c) 2011,2012 Zhang Xiuling <xiuling.zhang@renren-inc.com>
# Copyright (c) 2008,2009,2010 Zhang Xiuling <xiuling.zhang@opi-corp.com>
# Copyright (c) 2007 Zhang Xiuling <xiuling.zhang@dudu-inc.com>
#

use strict;
my $version=16;
my $place=".1.3.6.1.4.1.89373.1";
if ($#ARGV < 1) {
	print "bad run\n";
	exit 44;
}
my $mode = $ARGV[0];
my $req = $ARGV[1];
my $vendor="tobesupported";
my $type=99;
my $returnOID = $req;
my $count=0;
my $exitstatus=0;	#by default $exitstatus = $count    $exitstatus==99 stand for media error count [1,10000)  nagios warning

`/usr/opi/raidcheck/raidcheck.6 localruntf`;
if ( -f "/tmp/.raidcheck" ) {
	open(IN,"/tmp/.raidcheck");
	while(<IN>) {
		if (/\d+:\S+:\d+:\d+:\d+/) {
			($version, $vendor, $type, $exitstatus, $count) = split(/:/,$_);
			last;
		}
	}
	close(IN);
}

SWITCH: for ($mode) {
	/-s/ && exit;
	/-n/ && do {
		SWITCH: for ($req) {
			/$place$/ && do {
				$returnOID = "$place.1.0";
				last SWITCH;
			};
			(/$place\.(\d+)$/ || /$place\.(\d+)\.0$/) && do {
	if ($1 < 4) {
		$returnOID = "$place." . ($1 + 1) .".0";
	} else {
		exit;
	}
	last SWITCH;
};
exit;
		}
		last SWITCH;
	};
}

print "$returnOID\n";
$_ = $returnOID;
SWITCH: {
	(/^$place\.1$/ || /^$place\.1\.0$/) && do {
		print "INTEGER\n", $version,"\n" ;
		last SWITCH;
	};
	(/^$place\.2$/ || /^$place\.2\.0$/) && do {
		print "string\n", $vendor,"\n";
		last SWITCH;
	};
	(/^$place\.3$/ || /^$place\.3\.0$/) && do {
		print "INTEGER\n", $type,"\n" ;
		last SWITCH;
	};
	(/^$place\.4$/ || /^$place\.4\.0$/) && do {
		print "INTEGER\n", $exitstatus,"\n" ;
		last SWITCH;
	};
}
exit $exitstatus;
