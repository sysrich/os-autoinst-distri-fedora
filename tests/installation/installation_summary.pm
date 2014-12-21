use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "inst-summary", 5;
    
    if (check_screen("inst-warning", 5)) {
	die "Installation not ready";	
	}
	
    send_key 'alt-b';
 
}

1;

# vim: set sw=4 et:
