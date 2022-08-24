t=-10:0.5:10;
a=0.7;
x1=power(a,abs(t));
a=2.3;
x2=power(a,abs(t));
% Sub plot 1
subplot(1,2,1);
stem(t,x1,'filled');
title('for 0<a<1'); 
xlabel('Sample');
ylabel('Amplitude');

% Sub plot 2
subplot(1,2,2);
stem(t,x2,'filled');
title('for a>1');
xlabel('Sample');
ylabel('Amplitude');
