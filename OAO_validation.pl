#!/usr/bin/perl
#################################################################################################################################
#	Name: 			OAO_validation.pl
#   Author:			Cabe Waldrop
#	Purpose: 		Perform validation checks throughout the OAO daily load process
#	Note: 			File has hardcoded paths and depends on a sender script to move the file to the Sterling Server
#					The script is to run as root. 
#
#	Usage: 			The script will be kicked off via a control-M job. It takes one argument, the stage of the OAO load 
#				    under test. It will issue queries to the OAO database using sql*plus and check for process failures.
#
#	Output File:	The output file will contain the total number of failed tests and brief descriptions of each failure
#  
#################################################################################################################################

use strict; 
use Test::More;

#dirs
# -- prod
#my $etcDir = "/usr/local/etc";
#my #logDir = "/usr/local/logs";
#my $h2hDir;
#my $saveDir = "/usr/local/data/h2h"; 
#my $localBin = "/usr/local/bin";
#my $sourceDB = "MBNKPRD"
#my $sourceUser = "OAO_READ"
#my $sourcePass = "HaZ_9163"
#my $sourceConn = "$sourceUser/$sourcePass@$sourceDB"
#my $targetDB = "ADMPRD"
#my $targetUser = "DEVELOPER"
#my $targetPass = "developer"
#my $targetConn = "$targetUser/$targetPass@$targetDB"

# -- UNIT
my $prmDir = "/u01/apps/UTest/prm";
my $outDir = "/u01/apps/UTest/prm/OAO_validation/log";
my $arcDir = "/ssiarc/OAO_validation";
my $sourceUser = "OAO_READ"
my $sourcePass = "Tsp_9174"
my $sourceDB = "MONQA"
my $targetUser = "sc91849"
my $targetPass = "cabe2015"
my $targetDB = "ADMUAT"
my $targetConn = "$targetUser/$targetPass@$targetDB"

#Main
ScriptInitialize();
MainProcess();
EndScript();


sub ScriptInitialize{

	echo "Entering ScriptInitialize"
	
}

sub MainProcess{

	echo "Entering MainProcess"

}

sub EndScript{

	echo "Entering EndScript"
	exit 0

}
