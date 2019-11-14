clear;
clc;

threshold = input("Please enter the threshold below which samples will be considered to be invalid: ");
numSamples = input("Please enter the number of data samples to enter: ");
valids = [];

for i=1:numSamples
	sample = input("Please enter a data sample: ");
        if sample >= threshold
	        valids(end+1) = sample;
        end
end

if length(valids) == 0
        disp("Error! No valid samples were given!");
else
        disp("Valid samples");
        disp(length(valids));
        disp("Average");
        disp(mean(valids));
end
