title: Very-Very Simple L-Meter
tags: electronics
      meters
public: yes
summary: The proposed very simple addition to the digital DMM with frequency counter capability allows you - after certain calibration - to calculate the _L_-value of unknown inductor. ![coils](/static/img/2015/10/coils.jpeg)

If you start to play with coils and inductors, at some point you will want to
measure them. After some search in web, this
[circuit of a simple inductance (L-) meter](http://www.edn.com/design/test-and-measurement/4315796/Cheap-and-easy-inductance-tester-uses-few-components#comments)
was found. Its advantage is simplicity and low number of parts, although calibration
and tuning for the other voltage supply values takes certain amount of time. In addition,
original explanation of the circuit does not really give an idea, how the whole thing works,
so here the attempt is made to explain it "a little bit better".

## 3v Circuit

As I do not have holders for one AA battery, I decided to switch to 3v and
here is the result:

![simple-l-meter.png](/static/img/2015/10/simple-l-meter-schema.png)

## How the circuit works.

Without a coil/inductor - it's a basic flip-flop/bistable circuit;
coil/inductor introduces a positive feedback and whole thing starts to
oscillate.

1. Without an inductor, one transistor will conduct and another one will be closed
(as usually). For the matter of simplicity, let suppose Q1 is closed and Q2 is conducting.
1. When we introduce an inductor, its lead connected to the collector of Q1 sees
HIGH, and lead connected to the collector of Q2 sees LOW =>
potential difference, and the current starts to flow.
1. Initially the resistance of the coil is very big (as it resists to the changes of the
current) - voltage drop is close to _Vcc_ value (and Q2 base sees that); but
little by little it goes down as current increases => voltage on the Q1 collector
reduces.
1. As the collector of Q1 is connected to the base of Q2, potential of the Q2
base is also reducing, thus closing the transistor Q2 and by this opening the Q1
1. At some moment of time the potential of the Q1 collector will be low enough
to close Q2 and open Q1 (both to some extent) => again you have the potential 
difference and the steps 2-5 repeat the reversed roles.

Resistance of the circuit should be correctly chosen to allow _L_ component of
the circuit have enough influence on the _L/R_ constant. In this case the frequency of
oscillation will be directly proportional to the _L_ of the
inductor. If you measure the frequency with the reference inductor and
then measure the frequency of oscillation with an unknown inductor,
desired inductance value then can be calculated using the following formula:

**L = <reference inductance\> * (f1/f2)**

where

- _f1_ - oscillation frequency of the circuit with reference inductor
- _f2_ - oscillation frequency of the circuit with the desired inductor

Also note that the frequency also depends on the intrinsic resistance of the coil
- i.e. if the coil resistance in 30 Ohm, expect the _L/R_ constant be affected by
this and most likely the result won't be as declared on a "label".

## Resistance of the pot

In order to obtain the correct "base" frequency, I set the resistance of the
pot to ~175 Ohm. Try several settings with different already known inductors,
and see, will it work for you or not. If not - I usually try to adjust
the collector resistors within 39-130 Ohm range and emitter
resistor within 100-360 Ohm range.

For the original 1.5v circuit my values were 47 Ohm for collector resistors and 68
Ohm - for emitter.

## Components used

- 2 x BC 549 transistors - might be good idea to use higher frequency transistors, but
  these ones are OK
- 2 x 100 Ohm resistance
- 1x200 Ohm Cermet pot - this small blue pot is very handy and has better "turn" range
  then the majority of crap pots. Try also small multi-turn ones - with 10+ turns -
  you'll be able to make your adjustment much finer! I used the one I found in my parts'
  box.
- 90-degree pins to interface breadboard
- for component interconnections - wire 0.35/0.4 mm.

## Measurements

Apply DMM leads between the collector and emitter of any transistor (in other
words, Q1/Q2 collector and pin 1 of the pot); I had to connect the positive
"red" one to the collector, and the common wire "black" one to pin 1 of the
pot. Strangely enough, my Bryman refused to measure another way round, while
Fluke 87 (first gen.) measured in all possible connections and variations.

DMM should be set to _mV_ range.

Small inductors can be measured using this procedure:

1. Introducing it in series with already known/measured inductors,
1. Measure _f2_, and get resulting _L_
1. Subtract known inductance from _L_ and get the desired value.

The estimation is rather rough, but still can give you and idea.

## Measurement Jig

General breadboard can be used as a jig. Here is the way I'm using it:

![simple-l-meter-jig-01](/static/img/2015/10/simple-l-meter-jig-01-web.jpg)

![simple-l-meter-jig-02](/static/img/2015/10/simple-l-meter-jig-02-web.jpg)

I take measurements between one of the orange leads (going to inductor) and a green one.

## Soldered

![simple-l-meter-soldered](/static/img/2015/10/simple-l-meter-soldered-web.jpg)

## Component placement

Top view:

![components-topview](/static/img/2015/10/simple-l-meter-soldermap.jpg)

Flipped (for soldering):

![components-bottomview](/static/img/2015/10/simple-l-meter-soldermap-flipped.jpg)

## Calibration

To calibrate set of the inductors (bought from eBay) was used: 100, 330, 470,
1000 uH (from eBay) and 10mH from [Talking
Electronics](http://www.talkingelectronics.com/) transistor kit. As the
intrinsic resistance of the inductor modifies the L/R constant, therefore use
the ones with the lowest possible value of this parameter.

Here is the procedure:

1. Set the circuit's POT to ~175 Ohm in order to obtain the frequency around
355 kHz with 100uH (+-10%) inductor
1. Measure the frequency of the second inductor - I used the value of
1000 uH and got the frequency of 34.83 kHz
1. The resulting inductance is the product of _100uH *
(354 kHz / 34.83 kHz) =~ 1016 uH_.

Measure all available reference inductors - remember, the intrinsic resistance
influence the frequency. If you have inductance values higher then expected -
first check the DC resistance of the inductor. I have an inductor with 25 Ohm resistance!

You must check calibration after a pause to make sure there is no significant drift. Also,
frequency depends on a power supply - with the discharge of the batteries expect it to drift
with the same circuit settings.

## Conclusion

Using this circuit I now can roughly estimate various inductors I wind for my projects :)

_Mike_
