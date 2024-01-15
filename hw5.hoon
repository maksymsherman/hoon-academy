::|%  %=  %~
:: Q1
=>
|%
++  one  1
++  two  2
++  three  3
--
three

::Q2
=>
=+  n=0
|%
  ++  increment-n  .+  n
  --
increment-n

::Q3
=>
|%
+$  animal  ?(%snake %lizard %bird %dog %cow)
+$  animal-tracker  [species=animal name=@t meals=@ud]
--
^-  animal-tracker  [%cow 'connie' 123]


::Q4
::Consider these two code snippets.

::  =>  [a=1 b=2] 
::  (add a b)

:: => 
::  |% 
::  ++ a 1 
::  ++ b 2 
::  -- 
::  (add a b)

:: When entered in the Dojo, the first one errors out with find.add, while the second one works and returns 3. Why is that?

:: Hint: What's in the payload (right branch) of the core?

The payload of the core contains the entire Dojo subject, so function add is available in the second example but not in the first.

::Q5
=>  ~ 
=> 
|% 
++  a  1  
++  b  2 
-- 
(add a b)
::The payload of the core is empty because we built it with a subject that's just ~.
::Q6
=>
|%
++  c  3
++  d  4
--
=>
|%
++  a  1
++  b  2
--
(add a b)
::The payload of the core now contains the previous Dojo subject, which allows the code to find the add gate.


::Q7
=>  c=3
=+  [a=1 b=2]
=>
|%
++  $  .?  c
--
+2
::[3 0 7]

::Q8
=>  c=3
=+  [a=1 b=2]
=>
|%
++  $  .?  c
--
+<

::Q9
=>  c=3
=+  [a=1 b=2]
=>
|%
++  $  .?  c
--
+>

::Q10
=/  n  5
=/  gth-10
|%
++  $  (gth n 10)
--
gth-10

=/  gth-10
=/  n  5
|%
++  $  (gth n 10)
--
gth-10
::Because both gth-10 and n  5 are defined before the core, which then has access to both.

::Q11
=>
|%
++  $  "buried treasure"
--
=>
|%
++  $  "dirt"
--
^$


::Q12
=>
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "buried treasure"
  --
--
=>  core-in-arm
$

::Q13
=>
|%
++  $  "dirt"
++  core1
  |%
  ++  $  "trea"
  --
++  core2
  |%
  ++  $  "sure"
  --
--
%+  weld  =>  core1  $  =>  core2  $

::Q14
=>
|%
++  $  "as"
++  core-in-arm
  |%
  ++  $  "ure"
  --
--
=>
|% 
++  $  "dirt"
--
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "tre"
  --
--
core-in-arm




::Q15
=>
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
add-arm


::Q16

=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
%=  calc
a  2 
b  3
==

::Q17
=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
calc(a 2, b 3)

::Q18
=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
add-arm.calc(a 2, b 3)

::Q19
=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
%~  add-arm  calc  [a=1 b=2]

::Q20
=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
~(add-arm calc [a=1 b=2])

::Q21
=/  calc
=+  [a=0 b=0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b) 
++  div-arm  (div a b)
--
~(mul-arm calc [~(add-arm calc [a=3 b=5]) b=2])
