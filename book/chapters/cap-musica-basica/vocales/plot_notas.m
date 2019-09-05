function h=plot_notas(NOTAS)
    
    FONTSIZE=20;

    LABELS=[0:6];
    GRIDLAB=2.^(LABELS/12);

    NOTAS=NOTAS/min(NOTAS);
    POS=ones(size(NOTAS));
    stem(log2(NOTAS),POS, "linewidth", 3)
    set (gca, 'xgrid', 'on');
    set (gca, 'xtick', log2(GRIDLAB)) ;
    set (gca, 'ytick', [0:1]) ;
    set (gca, 'xticklabel', LABELS) ;
    %xlim(log2([1 1.5]))
    ylim([0 1])
    hx=xlabel('Semitons');

    text (log2(NOTAS), POS/2, [ 'a' 'e' 'i' 'o' 'u']', "fontsize", FONTSIZE);

    set(gca, "linewidth", 2);
    set(gca, "fontsize", FONTSIZE);
    set(hx, "fontsize", FONTSIZE);
    %set(hy, "fontsize", FONTSIZE);
    daspect([0.1 1 1])

    h=gcf;
endfunction
