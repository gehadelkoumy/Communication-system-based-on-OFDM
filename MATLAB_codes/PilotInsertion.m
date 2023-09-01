%% Pilot Insertion

function pilt_data = PilotInsertion(y,NoPilots)
%y== data
%NoPilots== num of added pilots 

lenData=length(y);
pilot=3+3j;
num=NoPilots;
k=1;

for i=(1:13:52)
     pilot_data1(i)=pilot;
            for j=(i+1:i+12);
                    pilot_data1(j)=y(k);
                    k=k+1;
            end
end

pilot_data1=pilot_data1';   % size of pilt_data =52
pilt_data(1:52)=pilot_data1(1:52);    % upsizing to 64
pilt_data(13:64)=pilot_data1(1:52);   % upsizing to 64

for i=1:52
    pilt_data(i+6)=pilot_data1(i);
end
