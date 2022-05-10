; FRIEND RELATION SHOULD BE MUTUAL

(define (domain WitchHunt)
   (:requirements :strips :typing)
   (:types player witch king dragon location princess)
   (:action pick-bucket
      :parameters (?p - player ?l - location)
      :precondition (not (has-bucket ?p) (at ?p ?l) (bucket-at ?l))
      :effect (and (has-bucket ?p))
   )

   (:action pour-bucket-on-witch
      :parameters (?p - player ?w - witch ?l - location)
      :precondition (and (has-bucket ?p) (at ?p ?l) (at ?w ?l))
      :effect (and (killed ?w) (shoe-dropped ?l))
   )
   
   (:action move
      :parameters (?p - player ?l1 - location ?l2 - location)
      :precondition (and (at ?p ?l1) (not (locked ?l2)))
      :effect (and (at ?p ?l2) (not (at ?p ?l1)))
   )

   (:action pick-shoe
      :parameters (?p - player ?l - location)
      :precondition (and (shoe-dropped ?l) (at ?p ?l) (not (has-shoe ?p)))
      :effect (and (has-shoe ?p))
   )

   (:action show-shoe-to-the-king
      :parameters (?p - player ?k - king ?l - location)
      :precondition (and (has-shoe ?p) (at ?p ?l) (at ?k ?l))
      :effect (and (trusts ?p ?k))
   )

   (:action ask-king-about-the-place
      :parameters (?p - player ?k - king ?l - location ?l2 - location)
      :precondition (and (trusts ?p ?k) (at ?p ?l) (at ?k ?l) (hasmap ?k ?l2))
      :effect (not (locked ?l2))
   )

   (:action killdragon
      :parameters (?p - player ?d - dragon ?l - location)
      :precondition (and (at ?p ?l) (at ?d ?l))
      :effect (and (killed ?d))
   )

   (:action break-cage
      :parameters (?p - player ?d - dragon ?l - location ?pr - princess)
      :precondition (and (killed ?d) (at ?d ?l) (at ?p ?l))
      :effect (and (free ?pr))
   )

   (:action move-princess
      :parameters (?p - princess ?l1 - location ?l2 - location)
      :precondition (and (at ?p ?l1) (free ?p))
      :effect (and (at ?p ?l2) (not (at ?p ?l1)))
   )

   (:action move-princess
      :parameters (?p - princess ?l1 - location ?l2 - location)
      :precondition (and (at ?p ?l1) (free ?p))
      :effect (and (at ?p ?l2) (not (at ?p ?l1)))
   )

   (:action marry-princess
      :parameters (?pr - princess ?p - player ?k - king ?l - location)
      :precondition (and (at ?p ?l) (at ?pr ?l) (at ?k ?l))
      :effect (and (married ?p ?pr))
   )

)



   
