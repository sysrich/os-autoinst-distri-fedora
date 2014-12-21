use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "inst-configuration", 5;
    send_key 'alt-r';
    assert_screen "inst-rootpw-selected", 5;
    send_key 'ret';
    assert_screen "inst-rootpw", 5;
    #FIXME - Why the hell can't fedora handle 7 characters in a single typed string?
    type_string "Fed";
    sleep 1;
    type_string "up0-";
    assert_screen "inst-rootpw-typed", 5;
    send_key 'alt-c';
    assert_screen "inst-secondrootpw", 5;
    type_string "Fed";
    sleep 1;
    type_string "up0-";
    assert_screen "inst-passwordsmatch", 5;
    send_key 'alt-d';
    assert_screen "inst-configuration", 30;

}

1;

# vim: set sw=4 et:
