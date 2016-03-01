title: Stripboard + Thru-Hole + SMD = Fast Prototyping
tags: electronics
public: yes
summary: ![proto-1-side](/static/img/2016/02/proto-1-side-web-front.jpg) Fast prototyping with stripboard and mixture of thru-hole and SMD components

I've always liked prototyping with a solderless breadboard, as it is fast to
build, easy to modify and poke around with probes. All was fine, until I tried
to build a prototype of a very simple project (on a breadboard), but it refused
to work correctly. I soldered it - and it bloody well worked! After some
investigation it turned out, that the contacts:

- are not tight at all

- sometimes have resistance (probably as it's not a firm connection), and in
  total this resistance are **not negligible at all**

To mitigate the issue, I've come up with an old idea of placing components
(with long leads) on the _copper side_ of a stripboard, - a method, which has,
to my mind, the following advantages:

- **no need to flip the board** - that's a big deal for me, as I prefer to see
  components while measuring

- least possible manual work, as there are already copper strips, which are
  partially interconnecting components - you still need to make jumper wires
  and you still need to occasionally remove copper using 3mm drill bit

- using copper strips as a measuring points

- SMD 1205 components can be used - thus simplyfying the job even further;
  still, thru-hole componenst are the foundation of the method.

All other prototyping techniques, like Dead-Bug/Point-to-Point/Manhattan/Bird's
Nest etc. - are very good and sometimes they are the only choice for RF, but
they are also relatively slow to build and an absolute overkill for a simple
circuits, which you would want to assemble as quickly as possible without
compromising the reliability.

Frequency-wise, this method has the same limitations as normal stripboard
method.

I was not able to find any equivalent technique in the Internel, so I'll post
my own pictures and recommendations - hopefully, they will be useful for a
reader.

## Photos of the technique

![two-boards](/static/img/2016/02/two-boards-web.jpg)

![proto-1-ov](/static/img/2016/02/proto-1-ov-web.jpg)

![proto-2-ov](/static/img/2016/02/proto-2-ov-web.jpg)

## Layout and preparations

- when making a layout, try to have at least one hole (2.54mm) of free space
  around the component - this small precaution makes the whole process of
  future modifications much simpler, as you can add and remove components without a hassle
  Remember, **each component**:

    - must be accessible at any time

    - can be desoldered at any time

    Your layout should be very easy and comfortable to modify and accessible
    to take measurements.

- Try to stay as close to the schematics as possible, even if it takes more
  space - this helps a lot to recall the details after a pause, and make it
  less tricky to debug 

- do not spend time in cutting tracks between the holes - use 3mm drill bit to
  remove the copper around the hole.

- clean the stripboard thouroughly - it can be a pain in the neck to solder
  contaminaded copper stripboard

- verify the layout: try to place all components on a stripboard and see, is
  it enough space

Try to make the process of building prototype, modifiying it and debuging as
easy as possible for you - less frustration, more pleasure!

## Soldering

- Use kapton tape to hold SMD components in place and flux copper and tinned
  surface of the component to facilitate the process. I have good results with
  a chinese variant of kapton tape.

- use appropriate bit for your soldering iron, capable of storing and
  delivering plenty of heat - copper strips are perfect heat-"suckers". My
  favorites are Antex XS 25 (25 watt) and Ersa Multityp 260 (16 watt), both with
  chisel (screwdriver) tips: 2.3 mm and 2.6 mm respectively. These tips are
  chunky and perfectly do their jobs in heating copper strips and component
  leads.

    ![ersa-antex-tips-1](/static/img/2016/02/ersa-antex-tips-1.jpg)

    ![ersa-antex-tips-2](/static/img/2016/02/ersa-antex-tips-2.jpg)

- Tip from Ersa is a bit wider then a tip from Antex, but this fact doesn't
  really prevent anybody from soldering **1205** SMD resistors and capacitors
  accurately.

- I **do not recomment** 18-watt Antex for this job - its tip just doesn't
  store enough heat to deal with the copper strips

- avoid making component leads too short or too long

- For a right-handed person, place and solder components from left to right
  (reverse for the left-handed)

- Do not spend a lot of time to make the components upright before soldering:
  the moment the first lead of a component is soldered (as-is), apply flux,
  melt the solder again, make in verticale with a finger of the second
  hand and then let the solder cool down without taking off the finger
  from the component. The rest is trivial:)

    ![proto-2-side](/static/img/2016/02/proto-2-side-web.jpg)

    ![proto-1-side](/static/img/2016/02/proto-1-side-web.jpg)


- do not throw out desoldered components - if they are fine, you should be able
  to re-use them later!

## SMD placement
- Variants of mounting SMD: vertically between two strips of copper or
  horizontally over the drilled hole.

   ![proto-1-smd](/static/img/2016/02/proto-1-smd-0-web.jpg)

   ![proto-2-smd](/static/img/2016/02/proto-2-smd-1-web.jpg)

## Conclusion

I hope, this technique will be useful for a reader - with some training, the
prototypes will be relatively fast to build, easy to modify and debug.  That's
it - happy prototyping!

