title: Monostable Multivibrator Math and Mods
tags: electronics
public: no
summary: Circuit modifcations to standard monostable multivibrator: accurate wave, delay variation, reverse bias protection

In this small note I am not really going to explain, how the basic circuit is working,
as there are already enough of good tutorials across the web.

## Mods to the basic circuit:
While building the basic cicuit, the following things were spotted which are not-so-good:

1. the wave was not really square on both ends: the moment you add the 10uf capacitor and 1M resistor, it becomes very well rounded
1. no reverse bias protection for the transistor Q2 => thus you can easily damage it.
In practice, I have a working circuit (astable), where -5V reverse bias voltage is ok, and I
tried even more without any issues, but here preventive measures won't really hurt.

All of these issues are identical to the problems of astable multivibrator,
therefore the proposed solution will be very similar. Here is my circuit
+ explanations:

1. Do not make R3 very big, 1M will already pose some problems. With big resistance, very small current
enters the base of Q2, thus giving an opportunity to Q1 to open first, as much more current can enter its base.
In addition, any fluctuation/noise of the power rail - for example, from DC motor - passed to the transistor base
can easily cut it off, therefore triggering randomly the whole circuit mechanism.
In general, there is a well-known principle: it is better to increase
capacitance in order to increase a time constant, but not resistance.
1. The diode D1 provides the accurate square wave for the output (collector of Q1) by
_isolating_ the positive lead of capacitor C1 from output (collector of Q1). The main reason it the following:
when charging though R3, all changes from right side are reproduced on the left side, thus giving the perfect
illustration for charging of the capacitor :) Diode prevents this
1. Resistor R4 improves transitional waveform HIGH-LOW of the 2nd output (collector of Q2),
by physically robbing off the electroncs out from the base of Q1 => speeding its switch-off operation. It acts
like pull down resistor here; without it, the waveform was rather round with long enough delays - (9 seconds,
for example). 
1. Diode D2 protects base of Q2 from breakdown caused by a pulse of negative voltage by
increasing the overall reverse voltage limit (= diode breakdown voltage + base-emitter reverse voltage limit)
1. Also, do not try to AC couple negative pulse directly to the base of Q2 directly without clamping diode -
it will not work, as the rising front of the pulse will turn on Q2 back (the base will be isolated from the negative lead of electrolitic).
Exactly because of this there is a diode at the input of Q1 - it will pass a positive change, but will clamp the negative change.

Spoiler:
Personally, I always wondered, why the charging time of the C1 is _ln(2) * R * C_.
Actually, the answer is pretty simple and 2 comes from the following fact: when
Q2-facing side of the capacitor is driven lower, then the potential of a common
wire, by a value usually equal to HIGH,
thus becoming approximately -Vcc (?), the real voltage difference between this
side and Vcc is doubled as a "distance" between -Vcc and Vcc => therefore,
charging voltage is 2 x Vcc, producing this magic 2 in the math derivations.

Finally, here are the soldering schemas created using CiTRONIX:

Top view:

    +-----------------+
    | o-o-o-------o->V|
    | # # #       # # |
    | # # &-------&-> |
    | # #/# ##### # # |
    | # & # o . o-&-< |
    | #/# #/#  /# # # |
    | o o o ##o## &-< |
    | | |     |  /# # |
    | o#+-@ : | o o-> |
    | |   |   | |"| # |
    | | o | +-@ o o >L|
    | | & | | #/# | | |
    | c & @#o & o-c | |
    | # &    /#   # | |
    | b-o---+ o---b | |
    | # #         # | |
    | e-o---------e-+ |
    +-----------------+

To flip it vertically or horizontally please use the flip script from CiTRONIX toolset.

Please, adapt them to your needs and use freely :)

Have fun!

Mike.
