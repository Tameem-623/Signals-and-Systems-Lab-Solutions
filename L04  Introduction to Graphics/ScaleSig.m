function  [scaled_v]= ScaleSig(sig, beta)
% ScaleSig - This function Scale the given signal by a factor beta.
%
% Syntax: [scaled_v] = ScaleSig(sig,beta)

for i = 1:length(sig)
    scaled_v(i) = sig(i)*beta;
end

