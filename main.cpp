//-----------------------------------------------------------------------------
#include <avr/io.h>
#include <avr/sleep.h>
#include "lib/avr-misc/avr-misc.h"
#include "lib/avr-debug/debug.h"
#include "potentiometer.h"
#include "config.h"
//-----------------------------------------------------------------------------
static BYTE scale_180 = 0;
//-----------------------------------------------------------------------------
#define K_180               9639    // = sec_in_hour * k * (1 + disp) = 3600 * 2.625 * (1 + 2%)
#define K_140               12639   // = sec_in_hour * k * (1 + disp) = 3600 * 3.442 * (1 + 2%)
#define B                   58
#define CLK_IN_KM           2560
//-----------------------------------------------------------------------------
__inline void init()
{
    set_position(180); mdelay(200);

    //set_position(90); mdelay(200);
    //halt();
    set_position(360); mdelay(200);
    set_position(450); mdelay(300);
    set_position(540); mdelay(800);
    set_position(270); mdelay(400);
    set_position(180); mdelay(200);
    set_position(B);   mdelay(500);
}
//-----------------------------------------------------------------------------
__inline void enable_input()
{
    set_bit(EIMSK, INT0);
}
//-----------------------------------------------------------------------------
__inline void disable_input()
{
    clr_bit(EIMSK, INT0);
}
//-----------------------------------------------------------------------------
__inline void enable_outputs()
{
    set_bits(DDRD, 3, 5, 6);
    set_bits(DDRB, 3);
}
//-----------------------------------------------------------------------------
__inline void disable_outputs()
{
    clr_bits(DDRD, 3, 5, 6);
    clr_bits(DDRB, 3);
}
//-----------------------------------------------------------------------------
__inline void start_timer()
{
    TCNT1 = 0;
    TCCR1B = 0x03;      // 64 prescaler for input clock
}
//-----------------------------------------------------------------------------
__inline void stop_timer()
{
    TCCR1B = 0;
}
//-----------------------------------------------------------------------------
void sleep()
{
    disable_interrupts();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    sleep_bod_disable();
    enable_interrupts();
    sleep_cpu();
    sleep_disable();
}
//-----------------------------------------------------------------------------
int main()
{
    // divide crystal frequency by 4
    CLKPR = 0x80;
    CLKPR = 0x02;

    DEBUG_INIT();

    enable_outputs();

    // fast-PWM mode for output
    TCCR0A = 0x03;
    TCCR2A = 0x03;

    // start output timers
    TCCR0B = 1;
    TCCR2B = 1;

    init();

    // falling edge interrupt input
    EICRA = 0x02;

    set_bit(TIMSK1, TOIE1);
    start_timer();
    enable_interrupts();

    while(1);
    return 0;
}
//-----------------------------------------------------------------------------
ISR(TIMER1_OVF_vect)
{
    // set zero position
    set_position(B); mdelay(200);

    // enable pin-change interrupt (for waking-up)
    PCMSK2 = 0x04;
    PCICR = 0x04;

    disable_outputs();
    disable_input();

    // enter power down mode
    sleep();
}
//-----------------------------------------------------------------------------
ISR(PCINT2_vect)
{
    // disable pin-change interrupt
    PCMSK2 = 0;
    // clear pending interrupt flag
    EIFR = 1;
    enable_input();
}
//-----------------------------------------------------------------------------
ISR(INT0_vect)
{
    WORD value;
    WORD clocks = TCNT1;
    TCNT1 = 0;

    enable_outputs();

    // filter LSB
    clocks >>= 1;
    clocks <<= 1;

    if(scale_180)
    {
        // 180 km/h scale
        value = F_CPU / 64 * K_180 / CLK_IN_KM / clocks + B;
    }
    else
    {
        // 140 km/h scale
        value = F_CPU / 64 * K_140 / CLK_IN_KM / clocks + B;
    }

    set_position(value);
}
//-----------------------------------------------------------------------------
