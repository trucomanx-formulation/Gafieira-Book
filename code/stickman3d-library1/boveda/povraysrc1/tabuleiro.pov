#include "colors.inc"
#include "textures.inc"
#include "shapes.inc" 
#include "stones.inc"    // pre-defined scene elements 

#include "cameraluz.inc"
#include "axescenter.inc"
#include "pisotextura.inc"

#include "Quadril.inc"
#include "Peito.inc"

#declare ANGLE=150;

object{ Peito1
        rotate<0,-ANGLE,0>
        translate<0,+1.0,0>
}

object{ Quadril1
        rotate<0,-ANGLE,0>
        translate<0,-0.5,0>
}

