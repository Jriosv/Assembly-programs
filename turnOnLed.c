//tomado y adaptado de : https://stackoverflow.com/questions/39040673/how-can-i-turn-on-off-caps-lock-scroll-lock-num-lock-key-programatically

#include <sys/ioctl.h>
#include <sys/fcntl.h> 
#include <sys/stat.h>
#include <sys/ioctl.h>      
#include <unistd.h>     
#include <stdio.h>
#include <stdlib.h>

#define O_WRONLY         01


void set_leds(int val) 
{
 int fd = open ("/dev/console",O_WRONLY);
 // argument (Bit 0 - Scroll Lock, Bit 1 - Num Lock, Bit 2 - Caps lock)
 ioctl (fd, 0x04 , val);
 close(fd);
}

void set_leds_sequence(unsigned char * cmdSeq, int len)
{
 int i;
 for (i = 0; i < len; ++i)
 {
   set_leds( cmdSeq[i] );
 }
}

void activate(void)
{
 unsigned char seq_activate[3]  = {3, 5, 4};
 set_leds_sequence(seq_activate, 3);
}

int main(){
    activate();
    return 0;
}

