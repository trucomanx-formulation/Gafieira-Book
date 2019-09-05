function E=get_st_error(REF,B)

    ST=2^(1/12);

    E=log((B./REF))/log(ST);

endfunction
