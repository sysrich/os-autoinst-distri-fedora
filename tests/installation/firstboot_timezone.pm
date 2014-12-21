use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "firstboot-timezone", 15;
    send_key 'alt-n';
 
}

1;

# vim: set sw=4 et:
