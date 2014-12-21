use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "inst-disk-not-conf", 5;
    send_key 'alt-d';
    assert_screen "inst-part-selected", 5;
    send_key 'ret';
    assert_screen "inst-destination-status", 5;
    send_key 'alt-d';
    assert_screen "inst-auto-partitioning", 60;
 
}

1;

# vim: set sw=4 et:
