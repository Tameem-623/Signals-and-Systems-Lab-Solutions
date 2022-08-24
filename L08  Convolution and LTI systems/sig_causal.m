function  [outputSignal]= sig_causal(sig,position)
    u = (position>=0);
    outputSignal = sig.*u;
end


