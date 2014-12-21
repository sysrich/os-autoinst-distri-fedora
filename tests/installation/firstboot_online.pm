use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "firstboot-online-accounts", 15;
    send_key 'alt-s';
 
}

1;

# vim: set sw=4 et:
