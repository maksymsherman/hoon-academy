:: Q1
%-  list  @ud
(list @ud)

::Q2
^-  %-  list  @ud  [1 2 3 4 5 ~]

::Q3
`(list @ud)`[1 2 3 4 5 ~]

::Q4
=/  animal  $?  %snake  %lizard  %bird  %dog  %cat  ==
^-  (list animal)  [%snake %lizard %bird ~]

::Q5
=/  carlist  ^-  (list @t)  ['toyota' 'ford' 'chevy' ~]
^-  (list @t)  :-  'bentley'  carlist

::Q6
=/  carlist  ^-  (list @t)  ['toyota' 'ford' 'chevy' ~]
^-  (list @t)  ['bentley' carlist]

::Q7
=/  starlist  `(list @p)`[~sonnet ~winter ~diglet ~ponnys ~]
?~  starlist  !!
i.starlist
::Alternatively, code below also works
=/  starlist  `(lest @p)`[~sonnet ~winter ~diglet ~ponnys ~]
i.starlist

::Q8
=/  starlist  `(lest @p)`[~sonnet ~winter ~diglet ~ponnys ~]
t.starlist

::Q9
%+  gulf  1  50

::Q10
=/  mul2  |=(a=@ud (mul a 2))
%+  turn  %+  gulf  1  50  mul2

::Q11
=/  mul2  |=(a=@ud (mul a 2))
%+  roll  %+  turn  %+  gulf  1  50  mul2  add

::Q12
=/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
%+  skim  `(list @p)`[~zod ~binrul ~sampel-palnet ~mister-rabbyt ~litzod ~sonnet ~nec ~wes ~]  is-star

::Q13
=/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
%-  lent  %+  skim  `(list @p)`[~zod ~binrul ~sampel-palnet ~mister-rabbyt ~litzod ~sonnet ~nec ~wes ~]  is-star

::Q14
((sane %t) 'see you on mars!')
((sane %ta) ~.spaceship)
((sane %tas) ~.spaceship)
((sane %ta) %rocket-123)
((sane %tas) %rocket-123)

::Q15
((sane %t) 'abcd-1234')
((sane %ta) 'abcd-1234')
((sane %tas) 'abcd-1234')
^-  (list @tD)  "abcd-1234"

::Q16
((sane %t) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
((sane %ta) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
((sane %tas) 'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt')
^-  (list @tD)  "Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt"

::Q17
^-  %-  list  @tD  ~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

::Q18
^-  tape  ~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

::Q19
^-  tape  ^-  (list @)  ~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116]

::Q20
%+  weld  %-  flop  " liah lla"  %-  flop  %-  cuss  "urbit"

::Q21
%^  snap  "I have a lot of honey"  16  'm'

::Q22
%-  crip  %^  snap  "I have a lot of honey"  16  'm'
::You can also try then passing it to trip (tape rip) to convert it back to a tape.
%-  trip  %-  crip  %^  snap  "I have a lot of honey"  16  'm'

::Q23
=/  ship  ^-  @p  ~tamlut-modnys
=/  num  ^-  @ud  24
"Hello, I'm {<ship>} and I like the number {<num>}."
