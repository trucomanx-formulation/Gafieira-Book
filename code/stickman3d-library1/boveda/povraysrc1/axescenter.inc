///////////////////////////////////////////////////
#local LL=1.0;
#local RR=0.05;
cylinder{ <0,-2*LL,0>,<0,2*LL,0>,RR
          texture{ pigment{ color Red}
                   finish { reflection 0.1 phong 1}
                 }
          scale <1,1,1> rotate<0,0,0> translate<0,0,0>
        }
cylinder{ <0,-2*LL,0>,<0,2*LL,0>,RR
          texture{ pigment{ color Red}
                   finish { reflection 0.1 phong 1}
                 }
          scale <1,1,1> rotate<0,0,90> translate<0,0,0>
        }
