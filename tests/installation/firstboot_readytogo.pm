use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "firstboot-readytogo", 15;
    send_key 'alt-s';
    assert_screen "firstboot-gettingstarted", 5;
 
}

1;

# vim: set sw=4 et:
