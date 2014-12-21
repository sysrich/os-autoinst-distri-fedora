use base "installbasetest";
use strict;
use testapi;

sub run() {

    assert_screen "gnome-desktop", 30;
    send_key 'ctrl-alt-delete';
    assert_screen "gnome-logout", 5;
    send_key 'tab';
    send_key 'tab';
    
    my $ret;
    for (my $counter = 10; $counter > 0; $counter--) {
        $ret = check_screen "gnome-logout-reboot-highlighted", 3;
        if ( defined($ret) ) {
            last;
        }
        else {
            send_key "tab";
        }
    }
    
    unless ( defined($ret) ) {
        assert_screen "gnome-logout-reboot-highlighted", 1;
    }
        
    sleep 4;
    
    send_key 'ret';
    
    sleep 6;
    
    backend_send "eject -f ide1-cd0";

 
}

1;

# vim: set sw=4 et:
