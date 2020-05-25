#include "colors.inc"
#include "textures.inc"
#include "shapes.inc" 
#include "stones.inc"    // pre-defined scene elements 

#include "includes/cameraluz.inc"
#include "includes/axescenter.inc"
#include "includes/pisotextura.inc"

#include "includes/Quadril.inc"
#include "includes/Peito.inc"

#declare ANGLE=45;
#declare THETA=-8;
object{ Peito1
        rotate<0,0,THETA>
        rotate<0,-ANGLE,0>
        translate<0,+0.9,0>
}

object{ Quadril1
        rotate<0,0,THETA>
        rotate<0,-ANGLE,0>
        translate<0,-0.25,0>
}

