title: ATmega328P microcontroller and SM-S2309S servo motor
public: yes
tags: avr
summary: I finally found the correct frequencies for SM-S2309S servo motor!

While trying to implement the fifth lesson from arduino book from official
starter kit in pure C, I was not being
able to make this bloody servo - SM-S2309S - to work properly: to turn back and
forth for 180&deg;. The book states, that the pulse widths should be
in-between 1 ms and 2 ms for 0&deg; - 180&deg; rotation, which is incorrect, if you
want to have real 180&deg; rotation with this servo. In reality, the pulse
widths are between 0.477ms and 2.15ms for practically 178&deg; of the rotation
controlled by potentiometer, which is connected to PC0/ADC0 port.

Potentiometer is read via PC0 (Analog Input 0 of Arduino board), and servo is
controlled through PB1 (Digital Port 9) with fastPWM mode on it.

Here is the code (all standard includes and usart/adc code were extracted for better readability):

~~~~{.c}
/* cycle length 40 000 ticks of prescaled clocks */
#define CYCLE_LENGTH 39999

/* Pulse duration of prescaled clocks for 0 degrees */
#define OCR_MIN 934 

/* Pulse duration of prescaled clocks for 180 degrees */
#define OCR_MAX 4300

/* Center positition of the servo */
#define OCR_CENTER (OCR_MAX+OCR_MIN)/2

/* How many ticks of prescaled clock correspond to 1 degree of rotation */
#define ONE_DEGREE (OCR_MAX-OCR_MIN)/180

void ADC_init();
uint16_t ADC_read(uint8_t);

void PWM16_init();

int main(void){
  /* needs to be 32bit value, 16bit is too little for storing multiplication of
   * 1024*180 */
  uint32_t v=0;

  ADC_init();
  PWM16_init();

  while(1){
    /* read ADC - receive value between 0 and 1023 */
    v = ADC_read(0);
    
    /* map to 0-180 degree range */
    v = (v * 180) / 1024;

    /* set the pulse width corresponding to the angle - this will shift the
     * servo */
    OCR1A = OCR_MIN + v * ONE_DEGREE;
  }

  return 1;
}

void PWM16_init(){
  /* Set non-inverting mode for OC1A & OC1B*/
  TCCR1A |= _BV(COM1A1) | _BV(COM1B1);
  TCCR1A &= ~(_BV(COM1A0) | _BV(COM1B0));

  /* Configure wave-form generator mode: 16bit fast-PWM - for OC1x */
  /* ICR1 defines the TOP value for TCNT1 in fastPWM mode */
  TCCR1A |= _BV(WGM11);
  TCCR1B |= _BV(WGM13) | _BV(WGM12);

  /* set ICR1 to default cycle length - 50Hz frequency*/
  ICR1 = CYCLE_LENGTH;
  /* set a compare register and a timer */
  OCR1A = OCR_CENTER;
  TCNT1 = 0;

  /* set clock prescaling: 8 is a divider */
  TCCR1B |= _BV(CS11);
  
  /*
	 * The setup of the OCnx should be performed before setting the Data
	 * Direction Register for the port pin to output.
	 * 
   * Enable output driver for OC1A */
  DDRB |= _BV(PB1);
}
~~~~

In your code, pay attention to the TCCR1A & TCCR1B initialization - incorrect
prescaling settings could lead to absolutely unpredictable result. I've got an
error like this - as a result, I went to sleep with my servo not working, and
only the next day I realized, that I had initialized wrong bits in TCCR1A
register.

Full source code could be found
[here](https://github.com/rhaido/arduino-lessons/tree/master/project05).

Useful reading:

* [Wikipedia](http://en.wikipedia.org/wiki/Servo_control)
* [Extremeelectronics.co.in](http://extremeelectronics.co.in/avr-tutorials/servo-motor-control-by-using-avr-atmega32-microcontroller/)
* [Atmel ATmega328P datasheet in PDF](www.atmel.com/Images/doc8161.pdf)

Have a good time!

