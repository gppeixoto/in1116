(define (problem gpp-prob) (:domain gpp-dom)
(:objects 
    theMonkey - MONKEY
    theBanana - BANANA
    theBox - BOX

    ; locations
    locA - LOCATION
    locB - LOCATION
    locC - LOCATION
)

(:init
    (at-obj theMonkey locA) ; monkey starts at A
    (not (is-high theMonkey))
    (at-obj theBox locB) ; the box starts at B

    (at-obj theBanana locC) ; the banana is at C
    (is-high theBanana) ; and high
    (not (has-banana theMonkey theBanana))
)

(:goal (and
    (has-banana theMonkey theBanana) ; monkey has to have the banana
    (at-obj theMonkey locA) ; at location A
    )
)
)
