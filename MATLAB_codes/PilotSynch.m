%% Pilot Synchronization

function synched_sig = PilotSynch(ff_sig)
%ff_sig == signal after fourier transform at receiver

for i=1:52  
    synched_sig1(i)=ff_sig(i+6);
end

k=1;

for i=(1:13:52)
        
    for j=(i+1:i+12);
        synched_sig(k)=synched_sig1(j);
        k=k+1;
    end
end

