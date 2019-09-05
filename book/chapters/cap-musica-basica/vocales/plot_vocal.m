function fout=plot_vocal(y,fs,FMAX,fp,texto)

    fout=fp;
    FONTSIZE=12;

    t=[1:size(y,1)]/fs;
    df=fs/(size(y,1)-1);

    FFT=abs(fft(y));

    F=[0:df:FMAX];
    N=length(F);

    h=plot(F,FFT(1:N)/max(FFT(1:N)), "linewidth", 2);
    daspect([80 1 1])
    set (gca, "xgrid", "on");
    set (gca, 'xtick', [0:fp:FMAX]) ;
    set (gca, 'ytick', [0:1]) ;
    hx=xlabel('Hz');
    hy=ylabel(texto);

    set(gca, "fontsize", FONTSIZE);
    set(hx, "fontsize", FONTSIZE);
    set(hy, "fontsize", FONTSIZE);
endfunction
