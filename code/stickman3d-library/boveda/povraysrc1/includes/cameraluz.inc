///////////////////////////////////////////////////
#local PROFUNDO=5.0;
#local ANGULO_CAMARA=90;

//////////////////////////////////////////////////
camera {
   location  <PROFUNDO, PROFUNDO/3, -PROFUNDO>
   look_at   <0, 0, 0>
   angle ANGULO_CAMARA
}

//////////////////////////////////////////////////
light_source {
   <0, 3*PROFUNDO, 0>
   color White
} 
light_source {
   <3*PROFUNDO, 3*PROFUNDO, 0>
   color White
} 
light_source {
   <3*PROFUNDO, 3*PROFUNDO, -3*PROFUNDO>
   color White
} 
