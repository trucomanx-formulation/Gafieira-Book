function [IDMIN]=func_min_first(V)

	IDMIN=1;
	N=length(V);
	if(N<=2)
		error('O vector é pequeno');
	endif

	for II=1:(N-2)
		[MIN ID]=min([V(II) V(II+1) V(II+2)]);
		if((ID==2)&&(V(II+1)<0.5))
			IDMIN=II+1;
			break;	
		end
	endfor
endfunction
