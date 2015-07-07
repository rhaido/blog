title: Soldering and VS-questions
tags: electronics
      soldering
public: no
summary: Soldering: tips, videos and guides for beginners

So, what can an average Joe like me contribute to so frequently discussed
topic of soldering of electronics components? Strangely enough, I can contribute
my selection of tutorials and tools and explain some physolophy behind it,
in opposition to endless crappy videos and guides leading to nowhere, just
stating random things.

## Start with "Basic Soldering Lesson" videos from PACE
_PACE_ is a famous and established manufacturer of a high-end soldering equipment for
electronics. Back in the 1980s they produced a [beautiful series of
videos](https://www.youtube.com/playlist?list=PL926EC0F1F93C1837), which
gives you almost - if not **ALL** - necessary information you need to start and
progress with soldering and achieving good results. It even covers - although briefly -
SMT component soldering.

Try to watch all of them, but the 
[Basic Soldering Lesson 1 - "Solder & Flux"](https://www.youtube.com/watch?v=vIT4ra6Mo0s&list=PL926EC0F1F93C1837&index=1)
if absolutely necessary for starters.
This video explains you all the magic and physics behind the soldering process,
heat transfer, thermal capacity, tool wattage, etc.; and it is perfectly
actual even today, and, from my point of view, it contains one very important
message to beginners:

## You do not need fancy tools to make good soldering joints
Do not listen anybody telling you otherwise. Soldering station, temperature
control, RF stations, etc - all of these things which are featured and praised 
by the Internet, but absense of them does not really prevent you from doing
good soldering work, undistinguishable from the work done with station. Look
at these shots:

![cmoy1](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-7b.jpg)

![cmoy2](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-8c.jpg)

![mono and linear circuits](/static/img/2015/07/06/mono_and_linear_regulator.jpg)

They were done with a decent properly chosen mains soldering irons, without
any control except WPI (ok, sijosae used dimmer to reduce wattage of the
beast):

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
with temperature contol, - I spent much more time in wondering, why the iron with temperature set to
320 degrees does not really want to solder components to stripboards of
width 2.2 mm, with 1.6mm chisel tip.

At a certain level with enough practice and a certain skill, understanding and
feeling will come on its own, just take you time to learn basics and progress.

## Choose a proper mains iron with adequate wattage.
It looks like I am agitating for the simple mains soldering irons, and indeed I
am doing so :) Quality soldering iron from recognised brand will cost you some money,
but will be in service for years - for example, some of the Antex irons are well known to serve
for 20+ years.

My personal rule of a thumb for electronics states the following: try to stick
with 15-20 watt irons with highest tip temperature below 400 degrees, somewhere
in 350-390 range. In **Europe**, the most appropriate branded irons satisfying
these criterias are:

- Antex: CS 18 watt (390 degrees) is a living classics of soldering irons
  I personally own one with silicon lead, and it is very light - the weight
  of my unit is 33 gramms without cable on home scales!
- JBC: 14 ST (11w) and 30 ST/40ST (25w/26w, **BUT** 380 degrees)
- ERSA: Multitip C15, Tip 260

To be complete, here are more powerful irons - with temperatures above 400 degrees - 
from the same manufactures, which you also might need in case of frequent
soldering of more massive joints:

- Antex XS 25
- ERSA Multitip 25, MultiPro
- JBC 65ST

_I omitted Weller (was Germany, now USA) as they are known for there soldeing stations, not
for their mains-powered irons, from my perspective._

I can say, that with the certain amount of confidence, any of the aforementioned
units from these reputable European manufacturers will have:

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
soldering process. In the same time, if I would buy soldering iron
right now, I will probably opt for JBC, because they are cheaper, have somewhat
better tip choice and already include fleximble silicone heat-resistant cable.

One rule, frequently omitted by beginners - I was not an exclusion - while
using classical irons, if the following:

## Give enough time to iron to heat up!

... and a little bit more to make sure, that the tip and heating element are
fully "loaded". Some manufacturers honestly put "5 minute" heating time on their
articles, but most of them do not really bother. Also, bigger/thicker/more
massive your tip is - more time it will require to heat up.

This was one of my errors in the past: I completely ignored WPI rule and was paying
more attention to led blinking, rather then that the state of the iron itself,
thus always underheating it

## Damp sponge vs brass wool sponge
Again, look at the PACE videos - for me it is clear, that the best practice is
to use both. Brass woll - sponge "heat shock" - soldering - and you will always
be fine. If only one thing is possible for you, take into account the following
things:
- damp sponge is a bit better against chemical residues and smaller
  contamination
- brass wool is better against stronger contamination, also cleaning the whole
  tip body is possible

All these statements are confirmed by me and by other colleagues. One thing, that
after tip tinning and wiping it with damp sponge, it looks much brighter, then
after a brass wool.

## Thickness of a solder wire
Again, it is WPI: how much solder you use to create a solder joint. Obviously,
thicker wire will have more solder per unit of length, then the thinner wire -
therefore, you will be able have a finer control over the process with the
thinner wire. Therefore, the diameter of solder wire is something between 0.35mm
and 0.5mm as upper limit. Again, do not use neither too small diameter, - as you
probably do not want to feed 10 cm of wire for one joint, - nor too big for the
opposite reasons (creation of solder blobs).

## Leaded vs Lead-free
For amature use the answer is clear: leaded solder in most suitable for you
combination. Lead-free fluxes are more toxic, and **FLUX** - not a solder
compound itself - poses the main danger to your health. Also, for medical, military and aeronatic
purposes, where the quality of the connection is critical, the leaded solder
**should be** used. Read more about car whiskers.

Lead free solder has higher melting point, requiring longer heat application,
thus there is more risk - not too much, but still more - to damage a component.
to the components. I personally started with lead free, as I was way too
imaginative, and struggled with it - altough managed at the end, but wasted a
lot of time to produce reasonable quality of solder joints.
