use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "firstboot-account", 15;
    type_string 'Richard Brown';
    assert_screen "firstboot-account-name", 5;
    send_key 'alt-u';
    type_string 'richard';
    assert_screen "firstboot-account-username", 5;
    send_key 'alt-n';
    assert_screen "firstboot-account-password", 5;
    type_string 'Fed0ra!';
    send_key 'tab';
    assert_screen "firstboot-account-password-two", 5;
    type_string 'Fed0ra!';
    assert_screen "firstboot-account-passwords-typed", 5;
    send_key 'alt-n';
 
}

1;

# vim: set sw=4 et:
