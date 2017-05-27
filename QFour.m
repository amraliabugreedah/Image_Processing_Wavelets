function [output, peaksnr, snr] = QFour(inputImg, show, subband, subQ, analysisLevel, qVal)
%% show variable is to determine wether to show the output (0) or not. subband input is to determine which coefficient is nulled (0 cA,1 cH, 2 for cV, 3 for cD). subQ is for question 4a, 4b, 4c. analysisLevel is to determine how many dwt we make.
if subQ == 'a'
    [cA, cH, cV, cD] = QTwo(inputImg, 1);
    if subband == 0
        [r, c, ~] = size(cA);
        cA = zeros(r, c, 3);
    elseif subband == 1
        [r, c, ~] = size(cH);
        cH = zeros(r, c, 3);
    elseif subband == 2
        [r, c, ~] = size(cV);
        cV = zeros(r, c, 3);
    elseif subband == 3
        [r, c, ~] = size(cD);
        cD = zeros(r, c, 3);
    end
    output = QThree(cA, cH, cV, cD, 1);
    output = uint8(output);
    subArrayFig = {'cA', 'cH', 'cV', 'cD'};
    if show == 0
        figure('Name', cat(2,'Q4a reconstructed image ', subArrayFig{subband+1}));
        imshow(output);
    end
elseif subQ == 'b'
    outputQA = QFour(inputImg, 1, subband, 'a');
    output = uint8(outputQA);
    [peaksnr,snr] = psnr(inputImg, output);
    display(peaksnr);
    display(snr);
    subArrayFig = {'cH', 'cV', 'cD'};
    if show == 0
        if exist('qVal', 'var') == 0
            figure('Name', cat(2,'Question 4b reconstructed image ', subArrayFig{subband},'. peaksnr = ' ,num2str(peaksnr), '. snr = ', num2str(snr)));
        else
            figure('Name', cat(2,'Question 4b reconstructed image ', subArrayFig{subband},'. peaksnr = ' ,num2str(peaksnr), '. snr = ', num2str(snr), '. Quantization value = ', num2str(qVal)));
        end
        imshow(output);
    end
elseif subQ == 'c'
    cA = inputImg;
    cHArray = {analysisLevel};
    cVArray = {analysisLevel};
    cDArray = {analysisLevel};
    for i = 1: analysisLevel
        [cA, cH, cV, cD] = QTwo(cA, 666);
        if subband == 1
            [r, c, ~] = size(cH);
            cH = zeros(r, c, 3);
        elseif subband == 2
            [r, c, ~] = size(cV);
            cV = zeros(r, c, 3);
        elseif subband == 3
            [r, c, ~] = size(cD);
            cD = zeros(r, c, 3);
        end
        cHArray{i} = cH;
        cVArray{i} = cV;
        cDArray{i} = cD;
    end
    %%%%%%%% now we have one cA and n times(analysis levels) cH, cV and cD. reconstruction starts here.
    for j = analysisLevel: -1: 1
        cARes = QThree(cA, cHArray{j}, cVArray{j}, cDArray{j}, 1);
        [r, c, ~] = size(cARes);
        if j == analysisLevel && analysisLevel == 5
            cA(1:r-1, 1:c, 1) = cARes(1:r-1, 1:c, 1);
            cA(1:r-1, 1:c, 2) = cARes(1:r-1, 1:c, 2);
            cA(1:r-1, 1:c, 3) = cARes(1:r-1, 1:c, 3);
        elseif j == 3 && (analysisLevel == 5 || analysisLevel == 4 || analysisLevel == 3)
            cA(1:r, 1:c-1, 1) = cARes(1:r, 1:c-1, 1);
            cA(1:r, 1:c-1, 2) = cARes(1:r, 1:c-1, 2);
            cA(1:r, 1:c-1, 3) = cARes(1:r, 1:c-1, 3);
        else
            cA = cARes;
        end
    end
    output = uint8(cA);
    [peaksnr,snr] = psnr(inputImg, output);
    subArrayFig = {'cH', 'cV', 'cD'};
    if show == 0
        if exist('qVal', 'var') == 0
            figure('Name', cat(2,'Question 4c reconstructed image ', subArrayFig{subband},'. peaksnr = ' ,num2str(peaksnr), '. snr = ', num2str(snr), '. Analysis Level = ', num2str(analysisLevel)));
        else
            figure('Name', cat(2,'Question 4c reconstructed image ', subArrayFig{subband},'. peaksnr = ' ,num2str(peaksnr), '. snr = ', num2str(snr), '. Quantization value = ', num2str(qVal), '. Analysis Level = ', num2str(analysisLevel)));
        end
        imshow(output);
    end
end
end