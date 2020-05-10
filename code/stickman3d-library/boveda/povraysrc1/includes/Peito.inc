///////////////////////////////////////////////////

  #include "colors.inc"

#local LX=0.6;
#local LZ=0.3;
#local LD=0.25;

#declare Peito1 =
union{
    prism{
        -LD, LD, 8
       <-LX, -LZ>,      //P1 a
       < LX, -LZ>,      //P1 b
       < 0.9*LX, 0.7*LZ>,      //P3 b
       < 0.7*LX, 1.5*LZ>,  //P4 b
       <  0, 1.5*LZ>,   //Pe
       <-0.7*LX, 1.5*LZ>,  //P4 a
       <-0.9*LX, 0.7*LZ>,      //P3 a
       <-LX, -LZ>       //P1 a
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
