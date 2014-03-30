title: Printing Books in Linux
tags: linux
      book
      printing
      pstops
public: yes
summary: Small note about book printing in Linux using psutils package

One day I wanted to print an old book, which I was not able to buy. As the
result of this task, I've got a set of commands, which might be useful for the
others.

First step for me was to find a better placement on a page for the text, because
I was going to use a plastic combs for holding pages together. Using [this]()
manual, I was able to produce a suitable result with pstops utility, which
turned out to be a very powerful tool:

```
:::bash
$ pstops '1:0@0.9(0,1.4cm)' input.ps | pstops '2:0@1(0,0),1@1(0,2cm)' \
 | psselect -p2-545 | psbook | psnup -pa4 -b0.2cm -d1 -2 >output.ps

```
Command chain explanation:

* `pstops '1:0@0.9(0,1.4cm)' input.ps` - first transformation
* `pstops '2:0@1(0,0),1@1(0,2cm)'` - second transformation
* `psselect -p2-545` - third
* `psbook | psnup -pa4 -b0.2cm -d1 -2` - forth

The next challenge was to figure out the correct printing command, because
printer kept re-scaling the image, and trying to fit image with borders within
the other borders. The result of this fight is the following lp invocation:

```
:::bash
$ lp -d 966-R020-CANON -o landscape -o sides=two-sided-short-edge \
  -o media=A4 -o PageSize=A4 -o fitplot -o media=iso_a4_210x297mm
```
The most important is a **-o fitplot** option, which tells printer not to scale down the
image and print it as is. For your case the printing command can be a bit
different.
 
Then, in order not to print one big file, I've splitted it in 20-pages ps
files with the help of the following script:

```
:::bash
$ cat ~/prepare_batches.sh 
#!/bin/bash

i=1
step=20
upper_limit=$1

while [[ $i -lt $upper_limit ]]
do
  if [[ $(($i+$step)) -gt $upper_limit ]]; then
    echo "${i}-${upper_limit}"
  else
    echo "${i}-$(($i+$step-1))"
  fi

  i=$(($i+$step))
done

$ ~/prepare_batches.sh 252
1-20
21-40
41-60
61-80
81-100
101-120
121-140
141-160
161-180
181-200
201-220
221-240
241-252
```
Final splitting has been done the following way:
```
:::bash
$ k=1; for i in $(~/prepare_batches.sh 252)
do
  psselect -p${i} input.ps output${k}.ps
  k=$(($k+1))
done

```
That's it. Now you have all the tools to become a guru of a book printing in
Linux.
