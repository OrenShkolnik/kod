
%
%  m-file for Example 8B.7 (Program 8B.7, p574)
%	Program name: prog8b7.m
%	Band stop filter
%
Fs=1000;										%	Sampling frequency
Ap=3;
As=20;
Wp=[50/500, 450/500];					%	Band edge frequencies
Ws=[200/500, 300/500];
[N, Wc]=buttord(Wp, Ws, Ap, As);		% Determine filter order
[zz, pz, kz]=butter(N,Ws, 'stop');				% Digitise filter
[b, a]=butter(N, Ws, 'stop');
subplot(2,1,1)								%	Plot magnitude freq. response
[H, f]=freqz(b, a, 512, Fs);			
plot(f, abs(H))
xlabel('Frequency (Hz)')
ylabel('Magnitude Response ')
subplot(2,1,2)								%	Plot pole-zero diagram
zplane(b, a)

