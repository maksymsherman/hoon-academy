:: |_  |=  |.  |-
:: Q1
=>
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b) 
--
add-arm

::Q2
=/  calc
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
%~  add-arm  calc  [a=4 b=2]

::Q3
=/  x  0
|%
++  $  
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
--

::Q4
=>
=/  x  0
|%
++  $  
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
--
=>
%=  .
x  6
==
$

=>
=/  x  0
|%
++  $  
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
--
%~  $  .  6

=>
=/  x  0
|%
++  $  
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
--
%-  .  6

::Q5
=>
|_  x=@ud
++  $ 
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
--
%-  .  6

::Q6
=>
|=  x=@ud
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
=>
%=  .
x  6
==
$

=>
|=  x=@ud
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
%~  $  .  6

=>
|=  x=@ud
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0
%-  .  6

::Q7
|=  x=@ud
^-  @ud
?:  ?&  (gth x 3)  (lte x 5)  ==  1  0

::Q8

::Q9
=>  mul  +2

::Q10
=>  mul  +6

::Q11
|_  [a=@ud b=@ud c=@ud]
++  $  
  |=  x=@ud
  ^-  @ud
  (add (add (mul (mul a x) x) (mul b x)) c)
--

::Q12
=/  quadratic
|_  [a=@ud b=@ud c=@ud]
++  $  
  |=  x=@ud
  ^-  @ud
  (add (add (mul (mul a x) x) (mul b x)) c)
--
~($ quadratic [3 2 1])

::Q13
=/  quadratic
|_  [a=@ud b=@ud c=@ud]
++  $  
  |=  x=@ud
  ^-  @ud
  (add (add (mul (mul a x) x) (mul b x)) c)
--
%-  ~($ quadratic [3 2 1])  5

::Q14
=>
=/  n  5
=/  counter  0
|%
++  $
  ?:  =((add counter 1) n)
    counter
  %=  $
  counter  (add counter 1)
  ==
--
$

::Q15
=>
=/  n  5
=/  counter  0
|.
  ?:  =((add counter 1) n)
    counter
  %=  $
  counter  (add counter 1)
  ==
$

::Q16
=/  n  5
=/  counter  0
|-
  ?:  =((add counter 1) n)
    counter
  %=  $
  counter  (add counter 1)
  ==

::Q17
|=  n=@ud
^-  @ud
=/  counter  0
|-
  ?:  =((add counter 1) n)
    counter
  %=  $
  counter  (add counter 1)
  ==

::Q18
=/  n  5
=/  total  1
|-
 ?:  =(n 0)
    total
  %=  $
  n  (sub n 1)
  total  (mul total n)
  ==

::Q19
=/  n  5
|-
 ?:  =(n 1)
    1
  (mul n $(n (sub n 1)))

::Q20
|=  n=@ud
|-
 ?:  =(n 1)
    1
  (mul n $(n (sub n 1)))

::Q21
=/  welder  `(list (list @tD))`~["Where " "did " "you " "come " "from, " "where " "did " "you " "go? " "Where " "did " "you " "come " "from " "Cotton-Eyed " "Joe?"]
=/  total  ""
^-  tape
|-
  ?~  welder
    total
  %=  $
  total  (weld total i.welder)
  welder  t.welder
  ==

::Q22
=/  welder  `(list (list @tD))`~["Where " "did " "you " "come " "from, " "where " "did " "you " "go? " "Where " "did " "you " "come " "from " "Cotton-Eyed " "Joe?"]
^-  tape
|-
  ?~  welder
    ""
  (weld i.welder $(welder t.welder))

