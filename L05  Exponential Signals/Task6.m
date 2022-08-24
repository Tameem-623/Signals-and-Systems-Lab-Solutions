clc; clear; close all;

% Signal
n = -10:0.5:10;
x = 1*exp(-0.2+0.5*i*n);
% Plot One 
subplot(4,1,1);
stem(n,abs(x),'filled');
title('Magnitude');

% PLot two
subplot(4,1,2);
stem(n,angle(x),'filled');
title('Phase');

% PLot Thrre
subplot(4,1,3);
stem(n,real(x),'filled');
title('Real');

% PLot four
subplot(4,1,4);
stem(n,imag(x),'filled');
title('Imaginery');
