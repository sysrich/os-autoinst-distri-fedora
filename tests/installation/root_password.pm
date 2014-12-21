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
    #type_string "Fedup0-", 1;
    sleep 1;
    send_key 'shift-f';
    sleep 1;
    send_key 'e';
    sleep 1;
    send_key 'd';
    sleep 1;
    send_key 'u';
    sleep 1;
    send_key 'p';
    sleep 1;
    send_key 'shift-3';
    sleep 1;
    send_key 'shift-1';
    sleep 1;
    assert_screen "inst-rootpw-typed", 5;
    send_key 'alt-c';
    assert_screen "inst-secondrootpw", 5;
    #type_string "Fedup0-", 1;
    sleep 1;
    send_key 'shift-f';
    sleep 1;
    send_key 'e';
    sleep 1;
    send_key 'd';
    sleep 1;
    send_key 'u';
    sleep 1;
    send_key 'p';
    sleep 1;
    send_key 'shift-3';
    sleep 1;
    send_key 'shift-1';
    sleep 1;
    assert_screen "inst-passwordsmatch", 5;
    send_key 'alt-d';
    assert_screen "inst-configuration", 30;

}

1;

# vim: set sw=4 et:
