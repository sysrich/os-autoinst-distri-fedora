use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "inst-wait-for-install", 3000;
    send_key 'alt-q';
 
}

1;

# vim: set sw=4 et:
