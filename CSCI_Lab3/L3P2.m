clear;
clc;

x = input("Enter list of grades: ");
fudged = x;
nInvalids = 0;
valids = [];
total = 0;
highest = -1;
lowest = 101;
numNerds = 0;
numMegaNerds = 0;

%The fudged copy is only so we're not destructively editing the original array

for i=1:length(fudged)
    if fudged(i) < 0 || fudged(i) > 100
        nInvalids = nInvalids + 1;
        fprintf('%i', fudged(i)); fprintf('\tis Invalid\n');
        fudged(i) = 0;
    else
        fprintf('%i', fudged(i)); fprintf('\tis Valid\n');
        valids(end+1) = fudged(i);
        total = total + fudged(i);
        fudged(i) = 1;
    end
end

disp(' ');
disp("Number of invalid grades: ");
disp(nInvalids);

disp(' '); 
disp("Correspondance array is: ");
disp(fudged);

for i=1:length(x)
    if  x(i) >= 0 && x(i) <= 100
        if  x(i) > highest
            highest = x(i);
            iHighest = i;
        end
        if x(i) < lowest
            lowest = x(i);
            iLowest = i;
        end
    end
end

disp(' '); 
disp("Average is: ");
average = total/length(valids);
disp(average);

disp(' '); 
if length(valids) ~= 0
    disp("The highest grade is:");
    disp(highest);
    disp("and is found at index:");
    disp(iHighest);
    disp("The lowest grade is:");
    disp(lowest);
    disp("and is found at index:");
    disp(iLowest);
end

disp(' ');
disp("Grades higher than 85%: ");
for i=1:length(x)
    if  x(i) >= 0 && x(i) <= 100
        if x(i) > 85
	    fprintf('Student at index '); fprintf('%i', i); fprintf(' got '); fprintf('%i', x(i)); fprintf('\n');
            numMegaNerds = numMegaNerds + 1;
        end
    end
end 
fprintf('The total number of students who scored higher than 85 is: '); fprintf('%i', numMegaNerds); fprintf(' student(s).'); fprintf('\n'); 

disp(' ');
disp("Grades higher than average: ");
for i=1:length(x)
    if  x(i) >= 0 && x(i) <= 100
        if x(i) > average
	    fprintf('Student at index '); fprintf('%i', i); fprintf(' got '); fprintf('%i', x(i)); fprintf('\n');
            numNerds = numNerds + 1;
        end
    end
end 
fprintf('The total number of students who scored higher than average is: '); fprintf('%i', numNerds); fprintf(' student(s).'); fprintf('\n'); 
