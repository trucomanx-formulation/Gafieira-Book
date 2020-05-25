///////////////////////////////////////////////////

  #include "colors.inc"


#local LY=0.25;

#local LX=0.5;
#local LZ=0.15;

#declare Quadril1 =
union{
    prism{
        //cubic_spline
        -LY, LY, 6//8
       //<0,0>
       <-0.9*LX, -LZ>,
       < 0.9*LX, -LZ>,
       < LX,  LZ>,
       <  0, 3.0*LZ>,
       <-LX,  LZ>,
       <-0.9*LX, -LZ>
       //<0,0>
       texture {
            pigment {
             checker 
             color rgb <0,0.4,0> 
             color rgb <0,0.6,0> 
             scale 1/3
            }
        }
       rotate<90,0,0>
    }
}
