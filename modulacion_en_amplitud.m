Ts = 0.01;
t = 0:Ts:10;

Fs = 1/Ts;
Nt = length(t);
m = sinc(t);
Tc = 0.05;
fc = 1/ Tc;
wc = 2*pi*fc;

xc = m.*cos(wc*t);

M = fft(m);
Xc =fft(xc);


fshift = (-Nt/2:Nt/2-1)*(Fs/Nt);


figure(10)
subplot(221)
plot(t,m,'k')
grid on
title('m(t)')
subplot(222)
plot(t,xc,'k')
grid on
title('xc(t)= m(t)cos(wct)')
subplot(223)
plot(fshift,fftshift(M),'k')
grid on
title('M(f)')
subplot(224)
plot(fshift,fftshift(Xc),'k')
grid on
title('Xc(f)')
