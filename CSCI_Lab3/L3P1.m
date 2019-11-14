clear;
clc;

x = input("Enter your array: ");
k = input("Enter your key: ");

listFinds = [];

for i=1:length(x)
    if x(i) == k
        listFinds(end+1) = i;
    end
end

if length(listFinds) ~= 0
    disp("Value is found at: ");
else 
    disp("Not Found");
end

for i=1:length(listFinds)
    disp(listFinds(i));
end
