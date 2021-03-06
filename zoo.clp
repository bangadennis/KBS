;====================================================================
;  IMPLEMENTATION OF ZOOKEEPER from P.H.Winston's AI book
;
;  To use, enter CLIPS and type in the following, assuming that
;  the name of this file is "zoo":
;
;   % clips
;   CLIPS> (batch "zoo")
;   CLIPS> (reset)
;   CLIPS> (facts)
;   CLIPS> (run)
;   CLIPS> (facts)
;
;  The (facts) commands simply show you what facts are asserted before
;  and then after the (run).
;====================================================================

(deffacts zoofacts "What's in the zoo today"
   (x has hair)
   (x chews cud)
   (x has long legs)
   (x has long neck)
   (x has tawny color)
   (x has dark spots)
)


(defrule z1 
   (x has hair)
=>
   (assert (x isa mammal))
)

(defrule z2
   (x gives milk)
=>
   (assert (x isa mammal))
)

(defrule z3
   (x has feathers)
=>
   (assert (x isa bird))
)

(defrule z4
   (x flies)
   (x lays eggs)
=>
   (assert (x isa bird))
)

(defrule z5
   (x isa mammal)
   (x eats meat)
=>
   (assert (x isa carnivore))
)

(defrule z6
   (x isa mammal)
   (x has pointed teeth)
   (x has claws)
   (x has foward-pointing eyes)
=>
   (assert (x isa carnivore))
)

(defrule z7
   (x isa mammal)
   (x has hoofs)
=>
   (assert (x isa ungulate))
)

(defrule z8
   (x isa mammal)
   (x chews cud)
=>
   (assert (x isa ungulate))
)

(defrule z9
   (x isa carnivore)
   (x has tawny color)
   (x has dark spots)
=>
   (assert (x isa cheetah))
)

(defrule z10
   (x isa carnivore)
   (x has tawny color)
   (x has black stripes)
=>
   (assert (x isa tiger))
)

(defrule z11
   (x isa ungulate)
   (x has long legs)
   (x has long neck)
   (x has tawny color)
   (x has dark spots)
=>
   (assert (x isa giraffe))
)

(defrule z12
   (x isa ungulate)
   (x has white color)
   (x has black stripes)
=>
   (assert (x isa zebra))
)

(defrule z13
   (x isa bird)
   (x does not fly)
   (x has long legs)
   (x has long neck)
   (x is black and white)
=>
   (assert (x isa ostrich))
)

(defrule z14
   (x isa bird)
   (x does not fly)
   (x swims)
   (x is black and white)
=>
   (assert (x isa penguin))
)

(defrule z15
   (x isa bird)
   (x isa good flyer)
=>
   (assert (x isa albatross))
)
