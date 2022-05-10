(define (problem fre-the-princess)
  (:domain WitchHunt)
  (:objects
    Knight - player
    Arthur - king
    Helga - witch
    Deathwing - dragon
    Cindirella - princess
    Castle DragonLair WitchHut - location
  )
  (:init 
      (player Knight)
      (king Arthur)
      (witch Helga)
      (dragon Deathwing)
      (princess Cindirella)

      (location WitchHut)
      (location DragonLair)
      (location Castle)

      (at Cindirella DragonLair)
      (at Knight Castle)
      (at Deathwing DragonLair)
      (at Helga WitchHut)
      (at Arthur Castle)

      (bucket-at WitchHut)
      (locked DragonLair)
      (hasmap Arthur DragonLair)
  
  (:goal (and (married Knight Cindirella)))
)
