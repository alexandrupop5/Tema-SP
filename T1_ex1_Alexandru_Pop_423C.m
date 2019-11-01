figure(1);
t=0:0.002:2;
s=square(t,25);
for idx=1:length(s)
    if s(1,idx)==1;
        s(1,idx)==0.5;
    end
end
plot(t,s)

figure(2);
t=0:0.02:2;
s=square(t,25);
for idx=1:length(s)
    if s(1,idx)==1
        s(1,idx)==0.5
    end
end
plot(t,s)

figure(3);
t=0:0.2:2;
s=square(t,25);
for idx=1:length(s)
    if s(1,idx)==1
        s(1,idx)==0.5
    end
end
plot(t,s)