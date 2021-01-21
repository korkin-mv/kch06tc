#include <avr/interrupt.h>

#include <ycmos/io/user/VT.hpp>

#include "UART.hpp"

using namespace ycmos;
using namespace ycmos::containers;
using namespace ycmos::io::user;

void operator delete(void *, unsigned int)
{

}

char buf[30];

UART uart;
String s(buf, sizeof(buf));
VT vt(&uart);
Pt pt;

[[gnu::OS_main]] int main()
{
    UART::init<9600>();
    PT_INIT(&pt);
    sei();
    for (;;)
    {
        while(PT_SCHEDULE(vt.gets(&pt, s)));
        while(PT_SCHEDULE(vt.puts(&pt, s)));
        while(PT_SCHEDULE(vt.puts(&pt, VT::newline)));
    }
}
