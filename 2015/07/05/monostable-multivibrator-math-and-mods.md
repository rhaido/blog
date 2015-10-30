title: Monostable Multivibrator, Mods and Math
tags: electronics
      circuits
public: yes
summary: Circuit modifications to standard monostable multivibrator: accurate wave, delay variation, reverse bias protection

In this small note I'll try to explain some aspects and mods of this standard
well-known circuit, which, from my point of view, are not particularly
well-described in the other sources.

## Modifications to the Basic Circuit

While building and testing the basic analogue circuit, the following not-so-good
things were spotted:

- Output wave was not really square on both ends: the moment you add the 10uf
  capacitor and 1M potentiometer, it becomes very-very rounded
- No reverse bias protection for the base-emitter junction of transistor _Q2_.
  Thus you can easily damage it (in theory). In practice, I have a working
  circuit (astable multivibrator), which actually works with -9v momentary
  reverse bias without any issues.

All of these issues are identical to the drawbacks of another classical circuit,
astable multivibrator. Therefore the proposed solutions will be very similar.
Here is my variant plus some explanations:

![monostable circuit](/static/img/2015/07/04/monostable_and_inputs.png)

- Do not make _R3_ very big, 1M will already pose some problems. With big
  resistance, very small current enters the base of _Q2_, thus giving an
  opportunity to _Q1_ to open first, as much more current can enter its base.
  In addition, any fluctuation/noise of the power rail - for example, from DC
  motor - passed to the Q2 base can easily cut it off, therefore triggering
  the whole circuit mechanism. In general, there is a well-known
  principle: it is better to increase capacitance in order to increase a time
  constant, but not resistance (Actually, every high impedance circuits have the
  problem of picking up various stuff along the way :D)
- The diode _D1_ provides the accurate square wave - rising edge - for the _Output
  1_ (collector of _Q1_) by _isolating_ the positive lead of capacitor _C1_
  from the collector of _Q1_. Without it - like in classical circuit -
  voltage of a Q1 collector can not instantly jump from LOW to HIGH, because
  of a charging process of the capacitor, thus producing the characteristic
  curve. The moment Q1 is closed, diode _D1_ is reverse biased and therefore
  non-conducting, isolating and providing accurate rise edge at the _Output 1_.
- Resistor _R4_ improves the falling edge of the 2nd output (collector of
  _Q2_), by physically robbing off the electrons out from the base of _Q1_
  => speeding its "off" operation. Here it acts like a pull down resistor;
  without it, the waveform was is rather round with delays long enough - (7
  seconds, for example). 
- Diode _D2_ protects base of _Q2_ from breakdown caused by a negative pulse by
  increasing the overall reverse voltage limit (= diode breakdown voltage +
  base-emitter reverse voltage limit)
- Also, do not try to AC couple negative pulse directly to the base of _Q2_
  without a clamping diode - it will not work, as the rising front of
  the pulse will turn on _Q2_ back. The reason is very simple: if you apply
  negative pulse directly to the base, the diode will prevent it from going
  to the negative of a cap, thus leaving it's potential unchanged; from the
  other side, for a short moment of time _Q2_ will be closed => base of _Q1_

  be isolated from the negative lead of electrolytic during the pulse thus
  cap potential will stay unchanged  will pass a positive change, but will clamp the negative
  change.
- _R5_ and _R6_ resistors: when Q2 is closed and _Output 2_ is _HIGH_, the
  relation of _R5_ and _R6_ determine the output value as it is basically the
voltage divider: _R5_ - _R6_ - _Q1 base/emitter junction_. In other words, if
you want _HIGH_ value of _Output 2_ be as close as possible to _Vcc_, you must
lower _R5_ and increase _R6_.

## Inputs
Some why?-answers are required for the inputs:

- For _Input 1_ diode+resistor clamping is necessary, otherwise the
  negative pulse will turn-off Q1 back: diode passes
  only positive changes to the base of _Q1_, while resistor dumps the negative
  change.
- For _Input 2_ situation is practically the same, just a small reorganisation
  to provide negative pulse ("ground" Q2 base, thus close Q2).
- Resistor values were taken arbitrarily, but tested: they should not be too
  big and too small, as mega-ohm range will be more like open-circuit, thus
  significantly slowing pull-up and pull-down actions.

## Math
Personally, I always wondered, why the charging time of the _C1_ is _ln(2) * R
* C_.  Actually, the answer is pretty simple and 2 comes from the following
fact: when _Q2_-facing side of the capacitor C1 is driven negative relative to
common wire, by a value usually equal to HIGH and becoming approximately equal
-Vcc, therefore the real potential difference between this side and Vcc is doubled
as a "distance" between -Vcc and Vcc is equal to _2 * Vcc_ and therefore,
charging voltage is 2 x Vcc, producing this magic 2 in the math derivations.

Overall, math for monostable is very similar to Astable, as the "fire time" is
dictated by the "astable" part of the circuit; for the further explanations,
please read [this](https://en.wikipedia.org/wiki/Multivibrator#Derivation).

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
