title: Printing Books in Linux
tags: linux
      book
      printing
      pstops
public: yes
summary: Small note about book printing in Linux using psutils package


```
pstops '1:0@0.9(0,1.4cm)' svoren2.ps | pstops '2:0@1(0,0),1@1(0,2cm)' | psselect -p2-545 | psbook | psnup -pa4 -b0.2cm -d1 -2 >out2.ps
```

```
lp -d 966-R020-CANON -o landscape -o sides=two-sided-short-edge -o media=A4 -o
PageSize=A4 -o fitplot -o media=iso_a4_210x297mm
```

```
bash-4.1$ cat ~/prepare_batches.sh 
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
```
