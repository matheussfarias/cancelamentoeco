//adicionar lineup em PATH
load lineup

alpha = 0.5
N = 500
sound(y,8192)


a = zeros(1,N+1);
a(1) = 1;
a(N+1) = alpha
d = [1 zeros(1,4000)]
hce = filter(1,a,d)

z = filter(1,a,y)

plot(z)
sound(z,8192)

he = a

hs= conv(he,hce)
stem(hs)


find(hs~=0)

zplane(a, 1)
zplane(1, a)

corre = autocorr(y,2000)
corre2 = autocorr(y2,2000)
corre3 = autocorr(y3,2000)