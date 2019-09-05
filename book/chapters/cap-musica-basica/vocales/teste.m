%%
%
figure(1)
FMAX=600;
subplot(5,1,1)
[y, fs] = audioread ('vocal-a.wav');
fa=plot_vocal(y,fs,FMAX,102,'a');

subplot(5,1,2)
[y, fs] = audioread ('vocal-e.wav');
fe=plot_vocal(y,fs,FMAX,112,'e');

subplot(5,1,3)
[y, fs] = audioread ('vocal-i.wav');
fi=plot_vocal(y,fs,FMAX,130,'i');

subplot(5,1,4)
[y, fs] = audioread ('vocal-o.wav');
fo=plot_vocal(y,fs,FMAX,123,'o');

subplot(5,1,5)
[y, fs] = audioread ('vocal-u.wav');
fu=plot_vocal(y,fs,FMAX,98,'u');

print(gcf,'vocales-fourier.eps','-tight','-depsc')

NOTAS=[fa,fe,fi,fo,fu];




figure(2)
h=plot_notas(NOTAS);
print(gcf,'vocales-semitons.eps','-tight','-depsc')

