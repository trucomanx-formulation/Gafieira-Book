///////////////////////////////////////////////////

  #include "colors.inc"

#local LP=0.6;
#local LZ=0.3;
#local LD=0.25;

#declare Peito1 =
union{
    prism{
        -LD, LD, 4
       <-LP, -LZ>,
       < LP, -LZ>,
       <  0, 1.5*LZ>,
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
