;Header and description

(define (domain gpp-dom)

;remove requirements that are not needed
(:requirements :strips :typing)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    MONKEY BANANA BOX LOCATION
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at-obj ?obj ?loc)
    (is-high ?obj)
    (has-banana ?monk ?ban)
)

;define actions here
    (:action MOVE
        :parameters (
            ?monk - MONKEY 
            ?locStart - LOCATION
            ?locEnd - LOCATION
            ?ban - BANANA)
        :precondition (and 
            (at-obj ?monk ?locStart)
            (not (is-high ?monk))
            (not (has-banana ?monk ?ban))
            )
        :effect (and 
            (at-obj ?monk ?locEnd)
            (not (at-obj ?monk ?locStart))
            )
    )

    (:action PUSH
        :parameters (
            ?monk - MONKEY
            ?oneBox - BOX
            ?locStart - LOCATION
            ?locEnd - LOCATION
            ?ban - BANANA
        )
        :precondition (and
            (at-obj ?monk ?locStart)
            (at-obj ?oneBox ?locStart)
            (not (has-banana ?monk ?ban))
        )
        :effect (and
            (at-obj ?monk ?locEnd)
            (at-obj ?oneBox ?locEnd)
            (not (at-obj ?monk ?locStart))
            (not (at-obj ?oneBox ?locStart))
        )
    )

    (:action CLIMB
        :parameters (
            ?monk - MONKEY
            ?oneBox - BOX
            ?loc - LOCATION
        )
        :precondition (and 
            (not (is-high ?monk))
            (at-obj ?monk ?loc)
            (at-obj ?oneBox ?loc)
        )
        :effect (and 
            (is-high ?monk)
        )
    )

    (:action PICKUP
        :parameters (
            ?monk - MONKEY
            ?ban - BANANA
            ?loc - LOCATION
        )
        :precondition (and 
            (is-high ?ban)
            (is-high ?monk)
            (not (has-banana ?monk ?ban))
            (at-obj ?monk ?loc)
            (at-obj ?ban ?loc)
        )
        :effect (and 
            (is-high ?ban)
            (is-high ?monk)
            (has-banana ?monk ?ban)
        )
    )
    
    (:action GETDOWN
        :parameters (
            ?monk - MONKEY
            ?ban - BANANA
            ?loc - LOCATION
        )
        :precondition (and 
            (is-high ?ban)
            (is-high ?monk)
            (has-banana ?monk ?ban)
            (at-obj ?monk ?loc)
            (at-obj ?ban ?loc)
        )
        :effect (and 
            (not (is-high ?ban))
            (not (is-high ?monk))
        )
    )

    (:action CARRY
        :parameters (
            ?monk - MONKEY
            ?ban - BANANA
            ?locStart - LOCATION
            ?locEnd - LOCATION)
        :precondition (and 
            (at-obj ?monk ?locStart)
            (at-obj ?ban ?locStart)
            (not (is-high ?monk))
            (not (is-high ?ban))
            (has-banana ?monk ?ban)
            )
        :effect (and 
            (at-obj ?monk ?locEnd)
            (not (at-obj ?monk ?locStart))
            (at-obj ?ban ?locEnd)
            (not (at-obj ?ban ?locStart))
            )
    )
    
)