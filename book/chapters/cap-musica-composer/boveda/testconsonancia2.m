%

FONTSIZE=20;

f1=1;
N=6;
t=linspace(0,N/f1,100);

y1=sin(2*pi*f1*t);
y5_3=sin(2*pi*(5/3)*f1*t);


subplot(2,1,1);
plot(t,y1,'-o',t,y5_3,'-.')
hl1=legend('y_f','y_{5f/3}');
%legend (hl1, 'location', 'northoutside');
hx1=xlabel('Tempo em ms.');
hy1=ylabel('Intensidade');
ha1=gca;
daspect([0.75 1 1])
grid

subplot(2,1,2); 
plot(t,y1+y5_3,'-*')
hl2=legend('y_f+y_{5f/3}');
%legend (hl2, 'location', 'northoutside');
hx2=xlabel('Tempo em ms.');
hy2=ylabel('Intensidade');
ha2=gca;
daspect([0.375 1 1])

grid


%set(ht,'fontsize',FONTSIZE);%% cambia solamente el titulo
set(ha1,'fontsize',FONTSIZE);%% cambia solamente los ejes
set(hx1,'fontsize',FONTSIZE);%% cambia solamente el texto de x
set(hy1,'fontsize',FONTSIZE);%% cambia solamente el texto de y
set(hl1,'fontsize',FONTSIZE);%% cambia solamente el texto de legend
%set(ht,'fontsize',FONTSIZE);%% cambia solamente el titulo
set(ha2,'fontsize',FONTSIZE);%% cambia solamente los ejes
set(hx2,'fontsize',FONTSIZE);%% cambia solamente el texto de x
set(hy2,'fontsize',FONTSIZE);%% cambia solamente el texto de y
set(hl2,'fontsize',FONTSIZE);%% cambia solamente el texto de legend

refresh
print(gcf,'consonancia53.eps','-depsc',['-F:',int2str(FONTSIZE)]);
