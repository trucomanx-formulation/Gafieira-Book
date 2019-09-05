function [NUM DEN ERR]=func_get_frac(NOTA,DENMAX)


	NUM=zeros(1,DENMAX);
	DEN=zeros(1,DENMAX);
	ERR=zeros(1,DENMAX);

	for II=1:DENMAX
		num1=floor(II*NOTA);
		num2=ceil(II*NOTA);
		err1=get_st_error(NOTA,num1/II);% abs((num1/II-NOTA)/NOTA);
		err2=get_st_error(NOTA,num2/II);% abs((num2/II-NOTA)/NOTA);
		


		if(abs(err1)<abs(err2))
		    NUM(II)=num1;
		    ERR(II)=err1;
		    DEN(II)=II;
        else
		    NUM(II)=num2;
		    ERR(II)=err2;
		    DEN(II)=II;
		endif

	endfor

endfunction
