///////////////////////////////////////////////////

  #include "colors.inc"

#local LP=0.5;
#local LZ=0.3;
#local LD=0.25;

#declare Quadril1 =
union{
    prism{
        -LD, LD, 6
       <-LP, -LZ>,
       < LP, -LZ>,
       < LP,  LZ>,
       <  0, 1.5*LZ>,
       <-LP,  LZ>,
       <-LP, -LZ>
       texture {
            pigment {
             checker 
             color rgb <0.4,0.4,0> 
             color rgb <0.6,0.6,0> 
             scale 1/3
            }
        }
       rotate<90,0,0>
    }
}
