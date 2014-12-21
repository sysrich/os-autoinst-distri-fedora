use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "login-gdm", 120;
    send_key 'ret';
    assert_screen "login-password", 5;
    type_string "Fed0ra!";
    send_key 'ret';
    assert_screen "gnome-desktop", 30;
 
}

1;

# vim: set sw=4 et:
