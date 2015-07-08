title: Soldering and VS-questions
tags: electronics
      soldering
public: no
summary: Soldering: tips, videos and guides for beginners

So, what can an average Joe like me contribute to so frequently discussed
topic of soldering of electronics components? Surprisingly enough, I can
contribute my answers to most frequently asked questions and explain some
philosophy behind them in one material, in opposition to endless crappy
mumbling videos and guides leading to nowhere, just stating random things.

So, here we go!

## Start with "Basic Soldering Lesson" videos from PACE
[PACE]() is an established, famous and very reputable manufacturer of a high-end
electronics soldering equipment. Back in the 1980 they produced a
[beautiful series of videos](https://www.youtube.com/playlist?list=PL926EC0F1F93C1837),
which gives you almost - if not **ALL** - necessary information you need to
start and progress with soldering and achieving good results. It even covers -
although briefly - SMT component soldering.

It is highly recommended to watch all of them, but the first one:
[Basic Soldering Lesson 1 - "Solder & Flux"](https://www.youtube.com/watch?v=vIT4ra6Mo0s&list=PL926EC0F1F93C1837&index=1)
- is absolutely necessary for starters.  This video explains you all the magic
and physics behind the soldering process, heat transfer, thermal capacity,
tool wattage, etc.; and it is absolutely actual even today.

First PACE video contains one very important message to beginners:

## You do not need fancy tools to make good soldering joints
Good tools - yes, fancy - no. Do not listen anybody telling you otherwise.
Soldering stations, temperature control, RF stations, etc - all of these things
are featured and praised by the Internet, but absense of them does not
really prevent you from doing good soldering work, undistinguishable from the
work done with station. Look at these shots:

![cmoy1](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-7b.jpg)

![cmoy2](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-8c.jpg)

![mono and linear circuits](/static/img/2015/07/06/mono_and_linear_regulator.jpg)

All this joints have been done with a decent and properly chosen mains soldering
irons, without any control except WPI (ok, _Sjosae_ used dimmer to reduce wattage
of the beast):

- Hakko Dash of sijosae:

  ![Sijosae soldering iron and stand](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/Tool/IronStand.jpg)

- Antex CS-18:

  ![my soldering iron](/static/img/2015/07/06/antex_cs-18.jpg)

Repeating the video, there are so many factors influencing the temperature
control, for exampe: tip thermal mass, connection between tip and heating element,
lag of temperatures between tip and temperature sensing element, wattage, recovery
speed, thermal mass of a surface and so on - that they will simply drive you
away from the soldering process itself, preventing you from any soldering at all.

From my personal experience, when I bought my first soldering iron - of course
to follow a fashion, it was with temperature contol, - I spent much more time in
wondering, why the iron with temperature **set** to 320 degrees and 1.6mm chisel
tip does not really want to solder components to continuous copper strips of 2.2 mm.

At a certain level, with enough practice and a certain skill, understanding and
feeling of the whole process will come, just take you time to learn basics and
progress.

## Choose a proper mains iron with adequate wattage.
It looks like I am advertising simple mains soldering irons, and indeed I
am doing so :) Quality soldering iron from recognisable brand will cost you some
money - much less, then really good soldering station - and will be in service
for years - for example, some of the Antex irons are well known to serve for 20+
years.

My personal rule of a thumb for electronics states the following: try to stick
with 15-20 watt irons with properly heated tip temperature below 400 degrees,
somewhere in 350-390 range. In **Europe**, the most appropriate irons from
famous brands, satisfying these criterias, are:

- Antex: CS 18 watt (390 degrees) is a living classics of soldering irons
  I personally own one with silicon power cable, and it is very light - on the
  home scales, the weight of my unit is 33 gramms without cable on home scales!
- JBC: 14 ST (11w) and 30 ST/40ST (25w/26w, **BUT** 380 degrees)
- ERSA: MultiTip C15, Tip 260

To have a complete list of irons, here I am also providing slightly more
powerful models from the same manufacturers, with temperatures above 400 degrees in case 
you need to solder more massive joints:

- Antex XS 25
- ERSA MultiTip C25, MultiPro
- JBC 65ST (65w!)

I ownAntex XS 25, and I find it too hot for normal electronics usage,
especially when soldering dence circuits (which are the majority of circuits I
produce); nevertheless, it comes handly when I need to re-solder/desolder
bigger things.

_I omitted Weller (was Germany, now USA) products as they are/were well-known
for there soldeing stations, not for their mains-powered irons, from my
perspective; also, they are utterly expensive, a factor definitively not
contributing to their popularity._

It can be said with certain amount of confidence, that any of the aforementioned
units will have:

- good heating element
- good ergonomics: although it is HIGHLY personal, the design of the units
  have been polished for years, thus providing certain quite stable combination
- reasonable recovery time (how long does it take to heat back
  after a contact with colder surfaces).
- good choice of tips (Antex is although lacking variety a bit, does not have
  chisel/screwdriver tip for C and CS range)
- replacement part are available and will not disappear suddenly; it is often
  possible to rebuild faulty unit even 10 years after initial purchase.

Personally, I like Antex irons for their heating element quality, ergonomics
(only models I mentioned earlier, as I tried them both), and hook - special
feature, which can be used for your index finger to improve control over
soldering process. From the other side, if I would buy soldering iron right now,
I will probably opt for JBC, because they are cheaper, have somewhat better tip
choice and already include flexible silicone heat-resistant cable contrary to
Antex, where it is an option and cost you some extra money; also the tips for
30ST/40ST/65ST are the same, thus providing you additional degree of
flexibility.

## Give your iron enough time to heat up!
... and a little bit more to make sure, that its tip and heating element are
fully "loaded". This is a principle, frequently omitted by beginners - I was
not an exclusion - while using classical irons, especially if there is more
trust in blinking LEDs then in WPI. Some manufacturers honestly declare "5
minute" heating time for their articles, but most of them do not really bother.
Physical dimensions of the tip also contribute to the heating time:
bigger/thicker/heavier your tip is, more time is required to heat up the whole
system properly.

I usually turn the iron on, put on work clothes, go for water to wet sponge, do
some other small preparations - the moment the iron is put to work, it is
already hot and ready to work!

## Power on and power off you iron only one time
Once I have read an instruction for the university electronics laboratory,
where among other this was this statement: "Tools like CRT oscilloscope
and soldering irons are not really intended to be switched on/off constantly:
when you come in, you turn them on, when you end your session, you turn them
off". Really, constant power recycling does not make any good to to your
soldering iron due to constant heating/cooling (expansion/shrinking) process.

Do not worry aboout tip - if you keep it tinned and clean of flux/chemical
residues, nothing will happen to it. During 5-6 hour soldering sessione - not
frequent, but still - my Antex CS-18 is constantly "on" - nothing has happened
to it yet, and I am still using the same tip!

## Tip care holywar: damp sponge vs brass wool ball
Again, look at the PACE videos - for me it is clear, that the best practice is
to use **both**. Follow the sequence "brass wool - damp sponge - soldering",
and you will allways be fine. If only one thing is possible
for you, take into account:
- damp sponge is a better against chemical residues and smaller
  contamination, which is left after desoldering
- brass wool is better against stronger contamination, like accidentaly melted
  plastic, also cleaning the whole tip body is possible

Also, after tip tinning and wiping it with damp sponge, it looks a little bit
brighter, then after a brass wool ball :)

**WARNING:** do not but non-cellu sponges from kitchen shop. Sponge you really
want should be made out of 100% cell, and be hard in a dry state; otherwise you
are risking to kill the tip of your soldering iron!

## Soldering iron stand: diagonal vs horizontal position.
It looks like as there is a small fight about this subject as well: should the iron
be placed horizontally, or with the tip slightly above the handle, or should it
be a diagonal placement, like in a normal stand. Personally I think, that if it
makes any difference, it is almost negligible. I use simple stand from Antex:
ST4, - and I am almost happy with it, although some modifications were required.
At the end, comfort of use is a deciding factor :)

One thing I really try to evade is a soldering iron handle getting hot from
stand - that is why I usually leave my iron sligtly "pulled-off" the stand. 

## Solder: leaded vs lead-free
Funny enough, for amatures and for high reliability soldering _today_ the
answer is the same: **leaded solder**.  Lead-free fluxes are more toxic, and it
is **FLUX** - not a solder compound itself - which is posing the main danger to
you while soldering. Also, for medical, military and aeronatic purposes, where
the quality of soldering connections is critical, the leaded solder is
obligatory.  Read more about cat whiskers.  Also, lead-free solder has higher
melting point (also it is a reason why differnet fluxes are used) and overall
melting process is much "slower", requiring longer heat application, thus
increasing a risk to damage a component.

Personally I started with lead free and struggled a lot with it; managed at the
end, but wasted a lot of time to produce solder joints of a  reasonable quality.
Today, leaded storage dominates my storage and I only try to work with it.

There is a number of solder manufacturers, which are accepted as an industry
standard: Kester, MG Chemicals, Multicore, Edsyn, Elsold (Germany), various
Japanese manufacturers, and so on - stick to them.  Compound wise, I would only
use and recommend 63/37 solder nowadays, as it is better then 60/40 in every respect, as far
as I am aware about it.

## Solder: diameter of a solder wire
Obviously, thicker wire will have more solder per unit of length, then the
thinner wire - therefore, with thinner wire you will be able have a finer
control over the process (you spend less wire per unit of the length and per
unit of time).  Its diameter should be something between 0.35mm and 0.5mm. As a
general rule, try to avoid extremes: do not use neither too small diameter, -
as you probably do not want to feed 10 cm of wire per joint, - nor too big for
the opposite reasons (creation of solder blob with 1 mm of solder).

Start with a small spool of 0.4mm or 0.5mm solder wire and see, if it is ok or

## Instead of the conclusion

- Get a decent soldering iron
- Get stand, special sponge and brass wool ball
- Get good flux and fine solder
- Try to solder some projects, like CMOY amplifiers, or something from Talking
  Electronics, and hone your skills from project to project
- Feel satisfaction from the process of creation.

Have fun!

Mike.
