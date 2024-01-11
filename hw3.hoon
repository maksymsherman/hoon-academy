:: Q1
=/  a  :-  n=1  ^=  t  'hello'  a
:: Q2
^-  [num=@ud text=@t]  [n=1 t='hello']
^-  [num=@ud text=@t]  :-  n=1  ^=  t  'hello'
^-   $:  $=  num  @ud  $=  text  @t  ==  :-  n=1  ^=  t  'hello'
:: Q3
=q3 $:  the=@p  goes=@t  ==
^-  q3  [700.983.177 561.016.680]
%-  q3  [700.983.177 561.016.680]
::Q4
=/  animal  $?  %snake  %lizard  %bird  %dog  %cat  ==
=/  animal  $?  %snake  
                %lizard  
                %bird  
                %dog  
                %cat  
            ==
^-  animal  %snake
::Q5
=/  animal  ?(%snake %lizard %bird %dog %cat)
^-  animal  %snake
::Q6
=/  animal  $?  %snake  
                %lizard  
                %bird  
                %dog  
                %cat  
            ==
=/  animal-tracker  $:  $=  species  animal  
                        $=  name  @t  
                        $=  meals  @ud  
                    ==
^-  animal-tracker  
[%cat 'iamacat' 3]

::Q7
:: =/  animal  ?(%snake %lizard %bird %dog %cat)
=/  animal  $?  %snake  
                %lizard  
                %bird  
                %dog  
                %cat  
            ==
=/  animal-tracker  ,[species=animal name=@t meals=@ud]
^-  animal-tracker  
[%cat 'iamacat' 3]

::Q8
=/  animal  $?  %snake  %lizard  %bird  %dog  %cat  ==
=/  a=animal  %snake
?-  a
    %snake  'im a snake'
    %lizard  'im a lizard'
    %bird  'im a bird'
    %dog  'im a dog'
    %cat  'im a cat'
==

::Q9
=/  animal  $?  %snake  %lizard  %bird  %dog  %cat  ==
=/  a=animal  %cat
?+  a  'i cannot fly'
%snake  'i cannot fly too'
%lizard  'i cannot fly too'
%bird  'i can fly'
==

::Q10
=/  animal  $?  %snake  %lizard  %bird  %dog  %cat  ==
=/  =animal  %dog
?+  animal  'i cannot fly'
%snake  'i cannot fly too'
%lizard  'i cannot fly too'
%bird  'i can fly'
==

::Q11
:: Optional (Haven't yet done)
=/  animal  $?  %snake  
                %lizard  
                %bird  
                %dog  
                %cat  
            ==
=/  animal-tracker  ,[species=animal name=@t meals=@ud]
^-  animal-tracker  
[%cat 'iamacat' 3]


=/  animal  ?(%snake %lizard %bird %dog %cat)
=/  animal-tracker  ,[species=animal name=@t meals=@ud]
=/  =animal-tracker  [%cow 'connie' 5]
^-  animal-tracker
=.
  meals.animal-tracker
  ?-  -.animal-tracker
      %snake  +(meals.animal-tracker)
      %lizard  +(meals.animal-tracker)
      %bird  (add 2 meals.animal-tracker)
      %dog   (add 3 meals.animal-tracker)
      %cat   (add 2 meals.animal-tracker)
      %cow   (add 5 meals.animal-tracker)
  ==
[species.animal-tracker name.animal-tracker meals.animal-tracker]


=/  a=animal  %snake
?-  a
    %snake  'im a snake'
    %lizard  'im a lizard'
    %bird  'im a bird'
    %dog  'im a dog'
    %cat  'im a cat'
==

::Q12
=/  x  %.y
?!  x

::Q13
=/  x  %.y
?!(x)

::Q14
=/  x  %.y
=/  y  %.n
?&  x  y  ==

::Q15
=/  x  %.y
=/  y  %.n
?|  x  y  ==

::Q16
=/  x  %.y
=/  y  %.n
|(x y)

::Q17
=/  x  %.y
=/  y  %.n
=/  z  %.y
?&  |(x y)  |(x ?!(z))  ==

::Q18
=/  x  4
?:  .=  x  5  1  0

::Q19
=/  x  4
?:  =(x 5)  1  0

::Q20
=/  x  5
?:  %+  gth  x  3  1  0

::Q21
=/  x  5
?:((gth x 3) 1 0)

::Q22
=/  x  4
?:  ?&  (gte x 3)  (lte x 5)  ==  1  0
