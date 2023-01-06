C = rand(10000)
B = rand(10000)
A=rand(10000, 1);
 

D = (A.*B)'*C;
% Vs
for x = 1:2:1000
    D= A(x)*B(x)/C(x);
end


if (time<1000 && value>5)
    %Savedata
elseif (time>1000 && value>5)
    %EraseData and put 1
elseif
    %EraseData and put 0
end

time=zeros(1,1000);
for i= 1:2:length(time)
    %do this
end

for i=1:1:10000
    while(time(i)<1000)
    %Save data
    end
end


for i=1:1:10000
    time(i)*
end




