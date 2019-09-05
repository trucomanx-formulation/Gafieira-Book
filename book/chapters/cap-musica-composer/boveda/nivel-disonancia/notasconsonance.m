%
%close all

addpath('mcode')
notas=2.^((1/12)*[1:11]);

num=cell(size(notas));
den=cell(size(notas));
err=cell(size(notas));

COMP=20;

for II=1:length(notas)
	[num{II} den{II} err{II}]=func_get_frac(notas(II),COMP);
endfor


FontSize=6;
LineWidth=2;

h1=figure(1);%, 'position',[0,0,600,950]);
JJ=1;
for II=[3,4,6,8,9,10]
    subplot(6,1,JJ,"align");
    JJ=JJ+1;
    bar(den{II},100*abs(err{II}))%, 'linewidth', LineWidth)
    [MIN IDMIN]=min(abs(err{II}));
    [IDMIN0]=func_min_first(abs(err{II}));
    hl(II)=legend(['+' num2str(II) 'S.  ' ...
  		       num2str(num{II}(IDMIN0)) '/' num2str(den{II}(IDMIN0)) ':' num2str(abs(100*err{II}(IDMIN0)),3) '%' ...
                       '  ' ...
                       num2str(num{II}(IDMIN)) '/' num2str(den{II}(IDMIN)) ':' num2str(abs(100*err{II}(IDMIN)),3) '%'], ...
                       'location', "north");
    ylim([0 50])
    xlim([0 COMP])
    hy(II)=ylabel('Semitom (%)');
    hx(II)=xlabel('Denominador');
    grid %minor
    set(hl(II), 'FontSize', FontSize);
    set(hy(II), 'FontSize', FontSize);
    set(hx(II), 'FontSize', FontSize);
    set(gca, 'FontSize', FontSize);
    refresh(h1)
    daspect([1 15 1])
endfor
refresh(h1)
refresh(h1)
print(h1,'notasconsonance1.eps','-depsc',['-F:' num2str(FontSize)],'-tight','-portrait');

h2=figure(2);%, 'position',[0,900,600,950]);
JJ=1;
for II=[1,2,5,7,11]
    subplot(5,1,JJ);
    JJ=JJ+1;
    bar(den{II},100*abs(err{II}))%, 'linewidth', LineWidth)
    [MIN IDMIN]=min(abs(err{II}));
    hl(II)=legend(['+' num2str(II) 'S.  ' ...
                       num2str(num{II}(IDMIN)) '/' num2str(den{II}(IDMIN)) ':' num2str(abs(100*err{II}(IDMIN)),3) '%'],
                       'location', "north");
    ylim([0 50])
    xlim([0 COMP])
    hy(II)=ylabel('Semitom (%)');
    hx(II)=xlabel('Denominador');
    grid %minor
    set(hl(II), 'FontSize', FontSize);
    set(hy(II), 'FontSize', FontSize);
    set(hx(II), 'FontSize', FontSize);
    set(gca, 'FontSize', FontSize);
    daspect([1 15 1])
endfor
refresh(h2)
refresh(h2)
print(h2,'notasconsonance2.eps','-depsc',['-F:' num2str(FontSize)],'-tight','-portrait');

