title: Soldering: Answering Beginners' Questions
tags: electronics
      soldering
public: yes
summary: Soldering station vs mains soldering iron? What solder to use? Brass wool vs damp sponge? Answers to the beginner's questions - my personal experience. ![vs](/static/img/2015/10/vs.jpg)

Beginners suffer in the world of soldering; they spend endless hours during their
first attempts creating a mess and then fixing it, only because of the absence
of clear information and guidance. This article was written to
simplify and explain some popular "one VS another" questions and provide some
starting point for amateurs.

So, here we go!

## "Basic Soldering Lesson" Videos From PACE
[PACE](https://www.paceworldwide.com/) is an established and reputable
manufacturer of a high-end equipment for soldering. Back
in the 1980 they produced a [beautiful series of
videos](https://www.youtube.com/playlist?list=PL926EC0F1F93C1837), which gives
you almost - if not **ALL** - necessary information you need to start and
progress with soldering and achieve good results. It also covers - although
briefly - SMT component soldering.

It is highly recommended to watch all of them, but the first one: [Basic
Soldering Lesson 1 - "Solder & Flux"](https://www.youtube.com/watch?v=vIT4ra6Mo0s&list=PL926EC0F1F93C1837&index=1)
- is absolutely necessary.  This video explains you all the magic and physics
  behind the soldering process, heat transfer, thermal capacity, tool wattage,
etc.; and it is absolutely actual even today.

Also, [there is nice series about
desoldering](://www.youtube.com/playlist?list=PL958FF32927823D12), also from
PACE and also very useful: I've learned some techniques and tricks from it.

In addition, here are some other videos worth watching, including one
with really professional soldering:

- [Professional SMT Soldering](https://www.youtube.com/watch?v=5uiroWBkdFY)
- Good but slightly biased [Introduction from Dave Johnes](http://www.eevblog.com/2011/06/19/eevblog-180-soldering-tutorial-part-1-tools/)

The very first PACE video contains one very important message to beginners:

## Good Soldering != Fancy Tools

Good tools - yes, fancy - no. Do not listen anybody telling you otherwise.
Soldering stations, temperature control, RF stations, etc - all of these things
are featured and praised by the Internet and _real_ experts, but absence of them does not
really prevent you from doing good soldering work, indistinguishable from the
work done with station. Look at these shots:

![cmoy1](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-7b.jpg)

![cmoy2](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-8c.jpg)

![mono](/static/img/2015/10/mono.jpg)

![linear](/static/img/2015/10/linear.jpg)

All this joints have been done with a decent and properly chosen mains soldering
irons, without any control except WPI (OK, _Sijosae_ used a dimmer to reduce wattage
of the beast):

- **Hakko Dash** of [Sijosae](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/):

  ![Sijosae soldering iron and stand](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/Tool/IronStand.jpg)

- **Antex CS-18**:

  ![my soldering iron](/static/img/2015/10/antex_cs-18.jpg)

I can only repeat what has already been stated in the video from PACE: there are so many
factors influencing the temperature control, like tip thermal mass, connection
between tip and heating element, lag of temperatures between tip and
temperature sensing element, wattage, recovery speed, thermal mass of a surface
and so on - that at the end what you really want is the tip being just **hot enough**
and having reasonable storage of energy (wattage).

Sometimes, you can be mislead by temperature control indicators, like blinking
LEDs, and I have not escaped this trap either: after I bought my first
soldering iron - of course with temperature control, in order to follow a
fashion, - I spent a lot of time wondering, why the iron with temperature **set** to 320
degrees and 1.6mm chisel tip does not really want to solder components to
continuous bare non-fluxed copper strips of 2.2mm width. There were the following contributing factors:

- LED was not blinking - in reality it doesn't actually mean the tip had reached the
preset temperature
- 2.2mm copper strip was just too wide for the 1.6mm tip
- non-fluxed bare copper is somewhat problematic to solder without flux

All these things are not really related to temperature control, but still they
have a great influence on your soldering job. At a certain level, with enough
practice and certain skill, comes understanding and feeling for the whole process
- just take your time to learn basics and progress with normal pace.

![kiss](/static/img/2015/10/keep-it-simple-stupid.jpg)

## ... with Mains Iron

It looks like I am advertising simple mains soldering irons, and indeed I am
doing so :) Quality soldering iron from recognisable brand will cost you some
money - although much less, then really good soldering station - and will be in
service for years. For example, some of the Antex irons are well known to work
for 20+ years with periodical tip replacement.

My personal rule of a thumb for soldering irons for electronics states: "try to
stick with 15-20 watt irons with tip temperature below 400 degrees, somewhere
in 350-390 range". In **Europe** you can find following irons satisfying these
criteria:

- **Antex CS-18** - 18 watt, 390 degrees, it is a living classics of soldering
  irons; it's very light: 33 grams (without soldering I personally own and
  recommend one with silicon cable, and it is very light - on the home scales,
  the weight of my unit is 33 grams without cable on home scales!
- **JBC 14 ST** (11w, but really good _small_ iron) and **30 ST** (25w, **BUT**
  380 degrees)
- **ERSA MultiTip C15**, **Tip 260**.  Tips from ERSA are renowned for their
  longevity and quality

In case you need to solder bigger massive stuff, there are more powerful models
from the same manufacturers, with temperature of the tip above 400 degrees:

- **Antex XS 25 watt**
- **ERSA MultiTip C25**, **MultiPro** (20w/25w)

I own **Antex XS 25** and find it too hot for normal electronics usage,
especially when soldering dense circuits (which are the majority of circuits I
produce); nevertheless, it comes handy when I need to re-solder/desolder
bigger things, metallic parts and so on.

_I omitted Weller (once in a while was German, now Cooper Tools USA) products
as they are/were well-known for their soldering stations, not for their
mains-powered irons (from my perspective); also, they are way too expensive - a
factor definitively not contributing to their popularity._

One practical advantage of the fixed temperature mains soldering iron -
personally for me - lies in the desoldering field. Desoldering wick/braid is a
"heat thieve" and if the iron temperature is not high enough, you won't get the
job done. The setting on my regulated iron was around 320 degrees - no idea how
much was in the reality, I just trust Goot and Antex - and I had to set it
above 360 each time I wanted to desolder something from a stripboard using
braid (thus plus two "heat thieves") fast enough. With the simple **Antex
CS-18** this hassle has been just forgotten.

It can be said with certain amount of confidence, that any of the aforementioned
units will have:

- good heating element - it is obvious :)
- good ergonomics

    From my point of view, it is almost the most important parameter of
    the iron, as there are plenty of offers with the same performance, but very
    view of them has really good ergonomics and weight. This is, however, highly
    personal, but the design of the proposed units has been polished for
    years and is quite often praised by the users across the world.

- reasonable recovery time (how long does it take to heat the tip back after a
  contact with colder surface).
- good choice of tips (Antex choice is a bit limited lacking chisel/screwdriver
  tip for C and CS range)
- replacement parts like heating element and tips are readily available and
  will not disappear suddenly; it is often possible to rebuild faulty unit even
  10 years after initial purchase.

Personally, I like Antex irons for their heating element quality, design,
weight, ergonomics (only models I mentioned earlier, as I tried both of them),
and hook - special feature, which can be used for your index finger to improve
control over soldering process. _Unfortunately_, Antex became a bit silly,
and has recenlty stopped addings hooks to their irons anymore, so it should be
asked/found/bought separately now.

In any case - aforementioned irons are worth getting and any of them is a
good foundation for the quality soldering work.

![heat](/static/img/2015/10/heat.jpg)

... properly and a little bit more to make sure, that the tip and the heating
element are fully "loaded". This detail is frequently omitted by beginners - I
was not an exclusion - while using classical irons, even regulated ones. While some
manufacturers honestly specify "5 minutes" of heating time, others do not
really care too much. Physical dimensions of the tip directly contribute to
the heating time: bigger/thicker/heavier your tip is, more time is required to
heat up the whole system properly.

I usually turn the iron on, put on work clothes, go to get some water to wet
sponge, do some other small preparations - and voila, iron is hot and
ready for soldering!

So, again, be patient and _give it enough time to heat up_ - that's the key to
success!

## Power Recycling
Once I have encountered an instruction for some university electronics laboratory,
which stated the following: "Tools like oscilloscope and soldering irons are
not really intended to be switched on/off constantly: when you come in, you
turn them on, when you end your session, you turn them off". Really, constant
power recycling does not make any good to to your soldering iron due to
constant heating/cooling (expansion/shrinking) process.

Do not worry about tip - if you keep it tinned and clean of flux/chemical
residues, nothing will happen to it. During my 5-6 hour soldering sessions -
not too frequently, but still - my Antex CS-18 is constantly "on" and nothing
has happened to it yet, and I am still using the same tip!

## Damp Sponge vs Brass Wool
Again, look at the PACE videos - for me it is clear, that the best practice is
to use **both**. Follow the sequence "brass wool - damp sponge - soldering",
and you will always be fine. If you want to use either of this things, 
take into account:

- damp sponge is a better against chemical residues and smaller
  contamination, which is left after desoldering
- brass wool is better against stronger and larger contamination, like
  accidentally melted plastic, also cleaning the whole tip body is possible

From my experience, after tip tinning and wiping it against damp sponge, it
shines a little bit brighter, then after a brass wool ball :)

One precaution about damp sponges, which sounds rather reasonable
([source](http://forums.adafruit.com/viewtopic.php?f=44&t=13784&start=15))

> Don't use cold water, or let the sponge get too wet. Doing so can cause the
> temperature to drop more than necessary, and can even cause thermal shock that
> damages the tip.

**WARNING:** do not use non-cellulose sponges from kitchen shop. Sponge you
really want should be made out of 100% cell, and it should be hard and dense in
a dry state; otherwise you are risking to kill the tip of your soldering iron!

## Leaded vs Lead-free Solder
Funny enough, the answer for amateurs and for high reliability the answer is
the same: **Leaded**.  Lead-free fluxes are more toxic, and it is
**FLUX** - not a metal compound itself - which is posing the main danger to you
while soldering. For for medical, military and aeronautic purposes, where the
quality of soldering connections is critical, the leaded solder is obligatory:
[read more about whiskers](https://en.wikipedia.org/wiki/Whisker_%28metallurgy%29).  Also,
lead-free solder has higher melting point (also it is a reason why different
fluxes are used) and overall tip wetting process is much "slower", requiring
longer heat application, thus increasing a risk to damage a component.

As a beginner, I made an error and started with lead-free and struggled a lot
with it; managed at the end, but wasted a lot of time to produce solder joints
of a reasonable quality. Today, leaded solder dominates my storage and I try
and do work only with it.

There is a number of solder manufacturers, which are accepted as an industry
standards: _Kester_, _MG Chemicals_, _Multicore_, _Edsyn_, _Elsold_ and so on -
stick to them. Compound wise, I would only **use and recommend 63/37 (Sn/Pb) or
62/36/2 (Sn/Pb/Ag) solder**  nowadays, as it is better then 60/40 in every
respect, as far as I am aware; only if you can not get one - use very
traditional **60/40** solder.

## Solder Wire Diameter
Obviously, thicker wire has more solder per unit of length
- therefore, with a thinner wire you have finer control over the process (you
spend solder wire per unit of length _and_ per unit of time comparing to the
solder with bigger diameter). Its diameter should be something between 0.4mm
and 0.6mm. As a general rule, try to avoid extremes: do not use neither too
small, as you probably do not want to feed 10 cm of wire per joint, nor too big
for the opposite reasons (creation of a solder blob with 1 mm of solder).

Start with a small spool of 0.4mm/0.5mm/0.6mm solder wire and see, if it is OK
or not, and then decide in what direction to move.

## Flux It!
You can often see videos where soldering is done without any additional liquid
flux. Quite a lot of such soldering is done to already pre-tinned surfaces,
thus making the whole story a bit simpler; sometimes solder wire has plenty of
"active" flux already in it. Overall, I would still add flux just to be sure
and have best possible results. Good rosin flux - again, stick to normal proven
brands, or even DIY (google the recipe) - it is what you need, nothing more.
Residue can be removed with Isopropyl Alcohol; if they are solid - scratch them
with something sharp and again Isopropyl Alcohol.

To simplify the flux application and make it more accurate, I would recommend
to buy a syringe or a flux dispenser bottle with a set of needles - both
variants from eBay; to prevent flux drying via needle, I insert a component
lead into needle nose, and it works like this very well.

![syringe](/static/img/2015/10/syringe.jpg)

Also, fluxing the surface/connection prior to desoldering helps to keep the
area nice and clear (an advice from one of the PACE videos :)).

![flux-jam](/static/img/2015/10/flux-jam.jpg)

## Decrypt the Signs!
Today we have a great choice of solder wires and fluxes. The moment you see a
solder spool or flux, you start to ask yourself a question: "What on earch all
this numnbers mean?". Here is a picture and a "decryption" example for the solder I
personally use.

![solder-spool](/static/img/2015/10/solder-spool.jpg)

- **Compound**

    The actual alloy used for the solder; **63/37** preferred, **60/40** as a
    fallback solution

- **Wire Diameter**
    
    It is what it says. Some manufactures (_Kester_, etc) often
    specify it in inch units, like *.020*: in this case, just multiply it by
    2.5mm (0.020\*25.4mm = .5080mm)

- **Flux Content**

    **C3** - type of the solder (might be producer dependent, worth to
    check), 3,5% - proportion of flux in the whole thing.

- **Flux Compound**
    
    **ROM0** means "Rosin Moderately Activated 0% halides". The naming
    convention is defined in *J-STD-004* US standard. More reading:
    [wiki](https://en.wikipedia.org/wiki/Flux_(metallurgy)) and
    [here](http://www.dispensetips.com/pages/Flux-specs.html). Usually, ROM0 or
    RMA is what you need for general electronics soldering tasks.

Sometimes manufacturers introduce their own abbreviations, thus additionally
complicating our life - the only way to understand these magic number is to go
to the producer's website and found proper documentation for it.

## Instead of a conclusion
- Watch videos from PACE
- Get a decent soldering iron
- Get stand, special sponge and brass wool ball
- Get/make good flux and fine solder
- Get solder sucker and solder wick to fix a mess
- Try to solder some projects, like CMOY amplifiers, or something from Talking
  Electronics, and hone your skills from project to project
- Try to make the solder joints ideal

And most important: Have Fun!

Mike.

