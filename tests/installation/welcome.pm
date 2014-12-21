use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "inst-welcome", 120;
    send_key 'right';
    send_key 'ret';
    assert_screen "inst-langselection", 60;
    send_key 'alt-c';
    
    if (get_var("BETA")) {
        assert_screen "inst-betawarning", 30;
        send_key "tab";
        assert_screen "inst-fateaccept", 5;
        send_key "ret";    
    }
    
    assert_screen "inst-summary", 5;
 
}

1;

# vim: set sw=4 et:
