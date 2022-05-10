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
      (witch SecondHelga)
      (dragon Deathwing)
      (princess Cindirella)

      (location WitchHut)
      (location DragonLair)
      (location Castle)
      (location Village)
      (location Outskirts)
      (location Mountains)
      (location Village2)
      (location Outskirts2)
      (location Mountains2)

      (at Cindirella DragonLair)
      (at Knight Castle)
      (at Deathwing DragonLair)
      (at Helga WitchHut)
      (at SecondHelga Mountains)
      (at Arthur Castle)

      (bucket-at WitchHut)
      (locked DragonLair)
      (locked Outskirts)
      (hasmap Lothar Outskirts)
      (hasmap Arthur DragonLair)
      
  
  (:goal (and (married Knight Cindirella)))
))
