#!/usr/bin/perl -w
use strict;
use testapi;
use autotest;
use needle;
use File::Find;

sub loadtest($) {
    my ($test) = @_;
    autotest::loadtest(get_var("CASEDIR") . "/tests/$test");
}

# subs for test types
sub load_boot_tests(){
	if (get_var("ISO_MAXSIZE")) {
        loadtest "installation/isosize.pm";
    }
    
    loadtest "installation/bootloader.pm";
    
}

sub load_inst_tests(){
	loadtest "installation/welcome.pm";
	loadtest "installation/partitioning.pm";
	loadtest "installation/installation_summary.pm";
	loadtest "installation/root_password.pm";
	loadtest "installation/wait_for_install.pm";
	loadtest "installation/reboot.pm";
	loadtest "installation/bootloader.pm";
	loadtest "installation/firstboot_lang.pm";
	loadtest "installation/firstboot_keyboard.pm";
	loadtest "installation/firstboot_timezone.pm";
	loadtest "installation/firstboot_online.pm";
	loadtest "installation/firstboot_account.pm";
	loadtest "installation/firstboot_readytogo.pm";
}

sub load_reboot_tests(){
	loadtest "installation/reboot.pm";
	loadtest "installation/bootloader.pm";
	loadtest "installation/login.pm";
}

# load tests in the right order
load_boot_tests();
load_inst_tests();
load_reboot_tests();

1;
# vim: set sw=4 et:
