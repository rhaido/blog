title: Monostable Multivibrator Math and Mods
tags: electronics
public: no
summary: Circuit modifications to standard monostable multivibrator: accurate wave, delay variation, reverse bias protection

In this small note I am going to explain some aspects of the standard well-known
monostable multivibrator circuit, which, from my point of view, are not
particularly well-described.

## Modifications to the basic circuit
While building and testing the basic circuit, the following things were spotted
which are not-so-good:

- Output wave was not really square on both ends.  The moment you add the 10uf
  capacitor and 1M potentiometer, it becomes very rounded
- No reverse bias protection for the transistor **Q2**.  Thus you can easily
  damage it (in theory). In practice, I have a working circuit (astable
  multivibrator), which I tested with -9v reverse voltage, and it was fine;

All of these issues are identical to the problems of another classical circuit,
astable multivibrator. Therefore the proposed solution will be very similar.
Here is my circuit plus some explanations:

![monostable circuit](/static/img/2015/07/04/monostable_and_inputs.png)

- Do not make **R3** very big, 1M will already pose some problems. With big
  resistance, very small current enters the base of **Q2**, thus giving an
  opportunity to **Q1** to open first, as much more current can enter its base.
  In addition, any fluctuation/noise of the power rail - for example, from DC
  motor - passed to the Q2 base can easily cut it off, therefore triggering
  randomly the whole circuit mechanism.  In general, there is a well-known
  principle: it is better to increase capacitance in order to increase a time
  constant, but not resistance.
- The diode D1 provides the accurate square wave - rising edge - for the **Output
  1** (collector of **Q1**) by _isolating_ the positive lead of capacitor **C1**
  from the collector of **Q1**. The main reason it the following:
  when charging though **R3**, all changes from right side are reproduced on the
  left side, thus giving the perfect illustration for charging of the capacitor :)
  Diode prevents this
- Resistor **R4** improves the falling edge of the 2nd output (collector of
  **Q2**), by physically robbing off the electrons out from the base of **Q1**
  => speeding its switch-off operation. It acts like pull down resistor here;
  without it, the waveform was rather round with long enough delays - (9 seconds,
  for example). 
- Diode D2 protects base of **Q2** from breakdown caused by a negative pulse
  by increasing the overall reverse voltage limit (= diode breakdown voltage +
  base-emitter reverse voltage limit)
- Also, do not try to AC couple negative pulse directly to the base of **Q2**
  directly without clamping diode - it will not work, as the rising front of the
  pulse will turn on **Q2** back (the base will be isolated from the negative lead
  of electrolytic).  Exactly because of this there is a diode at the input of
  **Q1** - it will pass a positive change, but will clamp the negative change.

## Inputs
Some why?-answers are required for the inputs:

- For **Input 1** clamping diode+resistor clamping is necessary, otherwise the
  negative pulse will turn-off Q1 back (remember, in general caps pass only 
  **changes** in voltage relative to the common wire potential. Diode passes
  only positive changes to the base of **Q1**, while resistor dumps the negative
  change.
- For **Input 2** situation is different, as there is a diode, which does not
  pass the negative changes anyway.
- Resistor values were taken arbitrarily: they should not be too big and too
  small, as mega-ohm range will be more like open-circuit, thus slowing pull-up
  and pull-down actions.

## Math
Personally, I always wondered, why the charging time of the **C1** is _ln(2) * R
* C_.  Actually, the answer is pretty simple and 2 comes from the following
fact: when **Q2**-facing side of the capacitor is driven negative relative to
common wire, by a value usually equal to HIGH and thus becoming approximately
-Vcc, therefore the real voltage difference between this side and Vcc is doubled
as a "distance" between -Vcc and Vcc is equal to _2 * Vcc_ and therefore,
charging voltage is 2 x Vcc, producing this magic 2 in the math derivations.

## Soldering
Finally, here are the soldering schemes created using [ASCii-pcB](https://github.com/rhaido/ascii-b):

Top view:

    :::pycon
          R R R  POT1 R
          1 2 3       5
        +-----------------+
        | o-o-o-------o->V|
        | # # #       # # |
        | # # &-------&-> |
        | # #/# ##### # # |
        | # & # o . o-&-< |
        | #/# #/#  /# # # |
        | o o o ##o## &-< |
        | | |     |  /# # |
    D1  | o#+-@ : | o o-> |
        | |   |   | |"| # | C2
        | | o | +-@ o o >L| R6
        | | & | | #/# | | |
    C1  | c & @#o & o-c | |
        | # &    /#   # | |
        | b-o---+ o---b | |
        | # #         # | |
        | e-o---------e-+ |
        +-----------------+
          Q R     D   Q
          1 4     2   2

To flip it vertically or horizontally please use the flip script from
[ASCii-pcB](https://github.com/rhaido/ascii-b) tool set.

## Conclusion
Please, adapt provided material to your needs and use it :)

Have fun!

Mike.
