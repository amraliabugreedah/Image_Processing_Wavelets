inputImg = imread('eurpe.jpg'); %%% <<<<< change image name to the image used
%Question Two
[cA, cH, cV, cD] = QTwo(inputImg, 0);

%Question Three
outputQ3 = QThree(cA, cH, cV, cD, 0);

% %Question Four
%a
QFour(inputImg, 0, 0, 'a', 666);  %cA
QFour(inputImg, 0, 1, 'a', 666);  %cH
QFour(inputImg, 0, 2, 'a', 666);  %cV
QFour(inputImg, 0, 3, 'a', 666);  %cD

%b
QFour(inputImg, 0, 1, 'b', 666); %cH
QFour(inputImg, 0, 2, 'b', 666); %cV
QFour(inputImg, 0, 3, 'b', 666); %cD

%c
QFour(inputImg, 0, 1, 'c', 2); %cH
QFour(inputImg, 0, 2, 'c', 2); %cV
QFour(inputImg, 0, 3, 'c', 2); %cD

QFour(inputImg, 0, 1, 'c', 3); %cH
QFour(inputImg, 0, 2, 'c', 3); %cV
QFour(inputImg, 0, 3, 'c', 3); %cD

QFour(inputImg, 0, 1, 'c', 4); %cH
QFour(inputImg, 0, 2, 'c', 4); %cV
QFour(inputImg, 0, 3, 'c', 4); %cD

QFour(inputImg, 0, 1, 'c', 5); %cH
QFour(inputImg, 0, 2, 'c', 5); %cV
QFour(inputImg, 0, 3, 'c', 5); %cD

%Question Five
%a
QFive(inputImg, 4, 0);

%b Q4b
outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 1, 'b', 666, 32); %cH

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 2, 'b', 666, 32); %cV

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 3, 'b', 666, 32); %cD

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 1, 'b', 666, 64); %cH

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 2, 'b', 666, 64); %cV

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 3, 'b', 666, 64); %cD

%b Q4c


%%%%%
outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 1, 'c', 2, 32); %cH

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 2, 'c', 2, 32); %cV

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 3, 'c', 2, 32); %cD

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 1, 'c', 2, 64); %cH

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 2, 'c', 2, 64); %cV

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 3, 'c', 2, 64); %cD
%%%%%
%%%%%
outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 1, 'c', 3, 32); %cH

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 2, 'c', 3, 32); %cV

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 3, 'c', 3, 32); %cD

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 1, 'c', 3, 64); %cH

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 2, 'c', 3, 64); %cV

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 3, 'c', 3, 64); %cD
%%%%%
%%%%%
outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 1, 'c', 4, 32); %cH

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 2, 'c', 4, 32); %cV

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 3, 'c', 4, 32); %cD

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 1, 'c', 4, 64); %cH

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 2, 'c', 4, 64); %cV

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 3, 'c', 4, 64); %cD
%%%%%
outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 1, 'c', 5, 32); %cH

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 2, 'c', 5, 32); %cV

outputImg = QFive(inputImg, 32, 666);
QFour(outputImg, 0, 3, 'c', 5, 32); %cD

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 1, 'c', 5, 64); %cH

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 2, 'c', 5, 64); %cV

outputImg = QFive(inputImg, 64, 666);
QFour(outputImg, 0, 3, 'c', 5, 64); %cD
