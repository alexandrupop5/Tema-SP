function [] = T1_FunctionE3_Alexandru_Pop_423C(a)
sum=0;
for idx = 1:length(a);
    sum = sum + real(a(idx));
end

media = sum / length(a)
elem_patrat = a.^(2)
atr = a * a.'
end

