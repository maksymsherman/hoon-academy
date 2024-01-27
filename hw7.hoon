:: Q2
++  add
  ~/  %add
  ::    unsigned addition
  ::
  ::  a: augend
  ::  b: addend
  |=  [a=@ b=@]
  ::  sum
  ^-  @
  ?:  =(0 a)  b
  $(a (dec a), b +(b))

::Q4
=/  groceries  (sy ~[%bread %milk %oj %eggs])
~(tap in groceries)

::Q5
=/  groceries  (sy ["bread" "milk" "oj" "eggs" ~])
`(set tape)`(~(put in groceries) "beef")

::Q6
=/  groceries  (sy ["bread" "milk" "oj" "eggs" ~])
`(set tape)`(~(del in groceries) "bread")

::Q7
=/  groceries  (sy ["bread" "milk" "oj" "eggs" ~])
(~(has in groceries) "bread")

::Q8
=/  animal  ?(%lion %tiger %bear %rhino %capybara)
`(map animal @ud)`(my ~[[%lion 6] [%tiger 2] [%bear 3]])

::Q9
=/  animal  ?(%lion %tiger %bear %rhino %capybara %girelephant)
=/  feedings  `(map animal @ud)`(my ~[[%lion 6] [%tiger 2] [%bear 3]])
%-  ~(put by feedings)  [%girelephant 1]

::Q10
=/  animal  ?(%lion %tiger %bear %rhino %capybara)
=/  feedings  `(map animal @ud)`(my ~[[%lion 6] [%tiger 2] [%bear 3] [%rhino 4] [%capybara 5]])
(~(del by feedings) %capybara)

::Q11
=/  animal  ?(%lion %tiger %bear %rhino %capybara)
=/  feedings  `(map animal @ud)`(my ~[[%lion 6] [%tiger 2] [%bear 3] [%rhino 4] [%capybara 5]])
(need (~(get by feedings) %tiger))

::Q14
|_  [a=@rs b=@rs c=@rs]
++  $  
  |=  x=@rs
  ^-  @rs
  (add:rs (add:rs (mul:rs (mul:rs a x) x) (mul:rs b x)) c)
--

::Q15
=/  quadratic
  |_  [a=@rs b=@rs c=@rs]
  ++  $  
    |=  x=@rs
    ^-  @rs
    (add:rs (add:rs (mul:rs (mul:rs a x) x) (mul:rs b x)) c)
--
%-  ~($ quadratic [.3 .2 .1])  .4.4

::Q16
=/  gte-100  (curr gte 100)
(gte-100 99)

::Q17
;:  add  1  2  3  4  5  ==
:(add 1 2 3 4 5)