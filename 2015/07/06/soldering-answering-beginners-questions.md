title: Soldering: Answering Beginners' Questions
tags: electronics
      soldering
public: no
summary: What should I buy: soldering station vs temperature controlled soldering iron? What solder to use? Brass wool vs damp sponge? In this article I tried briefly explain the main difference and give a basic guiding idea, which should help beginner during his first steps in soldering.

Beginners suffer in the world of soldering; they spend endless hours during their
first attempts to get the job done. I decided to write this article in order to give only a
beginning of a "leading thread" and provide a reader with a useful foundation for
the further adventures in the world of soldering for electronics.  Also, I am
taking courage to define some videos better then the others based on my
personal experience and their relevance to the real-world application :)

So, here we go!

## "Basic Soldering Lesson" Videos From PACE
[PACE](https://www.paceworldwide.com/) is an established and reputable
manufacturer of a high-end equipment for soldering electronics components. Back
in the 1980 they produced a [beautiful series of
videos](https://www.youtube.com/playlist?list=PL926EC0F1F93C1837), which gives
you almost - if not **ALL** - necessary information you need to start and
progress with soldering and achieve good results. It also covers - although
briefly - SMT component soldering.

It is highly recommended to watch all of them, but the first one:
[Basic Soldering Lesson 1 - "Solder & Flux"](https://www.youtube.com/watch?v=vIT4ra6Mo0s&list=PL926EC0F1F93C1837&index=1)
- is absolutely necessary for starters.  This video explains you all the magic
and physics behind the soldering process, heat transfer, thermal capacity,
tool wattage, etc.; and it is absolutely actual even today.

Also, there is a nice series of video about desoldering, also from PACE. I've
learnt some tricks and techniques from there too.

Here are the videos, from my point of view, worth watchin, including one
with really professional soldering:

-
-
- Curious inventor

First PACE video contains one very important message to beginners:

## Good Soldering != Fancy Tools
Good tools - yes, fancy - no. Do not listen anybody telling you otherwise.
Soldering stations, temperature control, RF stations, etc - all of these things
are featured and praised by the Internet, but absence of them does not
really prevent you from doing good soldering work, indistinguishable from the
work done with station. Look at these shots:

![cmoy1](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-7b.jpg)

![cmoy2](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/CMOY/CMOY-8c.jpg)

![mono and linear circuits](/static/img/2015/07/06/mono_and_linear_regulator.jpg)

All this joints have been done with a decent and properly chosen mains soldering
irons, without any control except WPI (OK, _Sijosae_ used dimmer to reduce wattage
of the beast):

- Hakko Dash of [Sijosae](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/):

  ![Sijosae soldering iron and stand](http://www.headphoneamp.co.kr/ftp/sijosae/Gallery/Tool/IronStand.jpg)

- Antex CS-18:

  ![my soldering iron](/static/img/2015/07/06/antex_cs-18.jpg)

I can only repeat what has been already stated in the video: there are so many
factors influencing the temperature control, like tip thermal mass, connection
between tip and heating element, lag of temperatures between tip and
temperature sensing element, wattage, recovery speed, thermal mass of a surface
and so on - that at the end what you really want is the tip being hot enough
and having reasonable storage of energy (wattage).

Sometimes, you can be mislead by temperature control indications, like blinking
LEDs, and I have not escaped this trap either: after I bought my first
soldering iron - of course with temperature control, in order to follow a
fashion, - I spent a lot of time wondering, why the iron with temperature **set** to 320
degrees and 1.6mm chisel tip does not really want to solder components to
continuous bare non-fluxed copper strips of 2.2 mm width.

At a certain level, with enough practice and certain skill, comes understanding and
feeling of the whole process - just take your time to learn basics and progress.

## Mains Iron With Adequate Wattage and Stabilized Temperature
It looks like I am advertising simple mains soldering irons, and indeed I
am doing so :) Quality soldering iron from recognizable brand will cost you some
money - although much less, then really good soldering station - and will be in service
for years. For example, some of the Antex irons are well known to work for 20+
years with tip replacement.

My personal rule of a thumb for soldering irons for electronics states the
following: try to stick with 15-20 watt irons with highest tip temperature
below 400 degrees, somewhere in 350-390 range. In **Europe** you can find
following irons satisfying these criteria:

- Antex: CS 18 watt (390 degrees) is a living classics of soldering irons
  I personally own one with silicon power cable, and it is very light - on the
  home scales, the weight of my unit is 33 grammes without cable on home scales!
- JBC: 14 ST (11w) and 30 ST/40ST (25w/26w, **BUT** 380 degrees)
- ERSA: MultiTip C15, Tip 260

There are more powerful models from the same manufacturers, with temperatures
above 400 degrees in case you need to solder more massive/bigger joints:

- Antex XS 25 watt
- ERSA MultiTip C25, MultiPro (20w)
- JBC 65ST (65w!)

I own Antex XS 25 and find it too hot for normal electronics usage,
especially when soldering dense circuits (which are the majority of circuits I
produce); nevertheless, it comes handy when I need to re-solder/desolder
bigger things.

_I omitted Weller (was Germany, now USA) products as they are/were well-known
for there soldering stations, not for their mains-powered irons, from my
perspective; also, they are utterly expensive, a factor definitively not
contributing to their popularity._

It can be said with certain amount of confidence, that any of the aforementioned
units will have:

- good heating element
- good ergonomics: although it is HIGHLY personal, the design of the units
  have been polished for years, thus providing certain quite stable combination
- reasonable recovery time (how long does it take to heat back
  after a contact with colder surfaces).
- good choice of tips (although Antex choice is a bit limited lacking
  chisel/screwdriver tip for C and CS range)
- replacement parts like heating element and tips are readily available and
  will not disappear suddenly; it is often possible to rebuild faulty unit even
  10 years after initial purchase.

Personally, I like Antex irons for their heating element quality, ergonomics
(only models I mentioned earlier, as I tried them both), and hook - special
feature, which can be used for your index finger to improve control over
soldering process. From the other side, if I would buy soldering iron right now,
I will probably opt for JBC, because JBC irons are cheaper, have wider tip
choice and already include flexible silicone heat-resistant cable contrary to
Antex, where it is an additional option and cost you some extra.

## Give It Enough Time To Heat Up!
... and a little bit more to make sure, that its tip and heating element are
fully "loaded". This is a principle, frequently omitted by beginners - I was
not an exclusion - while using classical irons, especially if there is more
trust in blinking LEDs then in WPI. Some manufacturers honestly declare "5
minute" heating time for their articles, but most of them do not really bother.
Physical dimensions of the tip also contribute to the heating time:
bigger/thicker/heavier your tip is, more time is required to heat up the whole
system properly.

I usually turn the iron on, put on work clothes, go for water to wet sponge, do
some other small preparations - and voila, it is
already hot and ready to to solder!

## Power-On/Power-Off
Once I have encountered an instruction for some university electronics laboratory,
where I have found the following rule: "Tools like CRT oscilloscope
and soldering irons are not really intended to be switched on/off constantly:
when you come in, you turn them on, when you end your session, you turn them
off". Really, constant power recycling does not make any good to to your
soldering iron due to constant heating/cooling (expansion/shrinking) process.

Do not worry about tip - if you keep it tinned and clean of flux/chemical
residues, nothing will happen to it. During my 5-6 hour soldering session - not
frequent, but still - my Antex CS-18 is constantly "on" and nothing has happened
to it yet, and I am still using the same tip!

## Damp Sponge vs Brass Wool
Again, look at the PACE videos - for me it is clear, that the best practice is
to use **both**. Follow the sequence "brass wool - damp sponge - soldering",
and you will always be fine. If you want to use either of this things, 
take into account:

- damp sponge is a better against chemical residues and smaller
  contamination, which is left after desoldering
- brass wool is better against stronger and larger contamination, like
  accidentally melted plastic, also cleaning the whole tip body is possible

From my experience, after tip tinning and wiping it with damp sponge, it looks little bit
brighter, then after a brass wool ball :)

One precaution about damp sponges, which look like quite reasonable
([source](http://forums.adafruit.com/viewtopic.php?f=44&t=13784&start=15)):

> Don't use cold water, or let the sponge get too wet. Doing so can cause the
> temperature to drop more than necessary, and can even cause thermal shock that
> damages the tip.

**WARNING:** do not use non-cellulose sponges from kitchen shop. Sponge you really
want should be made out of 100% cell, and be hard in a dry state; otherwise you
are risking to kill the tip of your soldering iron!

## Stand Up or Lay Down? Stand as a Radiator?
It looks like as there is a small fight about this subject as well: should the iron
be placed horizontally, or with the tip slightly above the handle, or should it
be a diagonal placement, like in a normal stand. Personally I think, that if it
makes any difference, it is almost negligible. I use simple stand from Antex:
ST4, - and I am almost happy with it, although some modifications were required.
At the end, comfort of use is a deciding factor :)

One thing I really try to evade is a soldering iron handle getting hot from
stand - that is why I usually leave my iron sligtly "pulled-off" the stand.

Another question, should the tip of uncontrolled soldering iron really touch
some metallic part or not

## Solder: leaded vs lead-free
Funny enough, for amateurs and for high reliability soldering _today_ the
answer is the same: **leaded solder**.  Lead-free fluxes are more toxic, and it
is **FLUX** - not a solder compound itself - which is posing the main danger to
you while soldering. Also, for medical, military and aeronautic purposes, where
the quality of soldering connections is critical, the leaded solder is
obligatory. [Read more about
whiskers](https://en.wikipedia.org/wiki/Whisker_%28metallurgy%29).  Also, lead-free solder has higher
melting point (also it is a reason why different fluxes are used) and overall
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

Start with a small spool of 0.4mm or 0.5mm solder wire and see, if it is OK or

## Soldering bare copper/matrix/perf/strip board? Use flux!
You can often see videos where soldering is done without any flux. Quite a lot
of such soldering is done to already pre-tinned surfaces, thus making the whole
story shorter. Sometimes there is plenty of flux already in the solder wire.
But overall, in order to remove oxides from copper, which are formed almost
immediate after you cleaned it with alcohol, you have to use flux. Videos from
PACE contain good explanations about why is it necessary, and still it is
frequently forgotten.

For the beginning, stick to the traditional rosin flux. You can even make one
yourself from alcohol and pine rosin, if you want to save some money. But
still, use flux - it will greatly simplify soldering and improve the final
result. After soldering, rosin flux residues can be removed with isopropyl
alcohol.

Even if you think, that your solder wire has enough flux, it might be
beneficial to use additional to simplify the whole process and ensure the
solder joint integrity.

## Instead of a conclusion

- Watch videos from PACE
- Get a decent soldering iron
- Get stand, special sponge and brass wool ball
- Get/make good flux and fine solder
- Get solder sucker and solder wick to fix a mess
- Try to solder some projects, like CMOY amplifiers, or something from Talking
  Electronics, and hone your skills from project to project
- Be persistent and feel satisfaction from the process of creation.

Have fun!

Mike.
