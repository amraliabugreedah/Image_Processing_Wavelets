function [outputImg] = QFive(inputImg, qVal, show)
    [cA, cH, cV, cD] = QTwo(inputImg, 1);
    [rA, colA, ~] = size(cA);
    [rH, colH, ~] = size(cH);
    [rV, colV, ~] = size(cV);
    [rD, colD, ~] = size(cD);
    stepSize = -1000:qVal:1000;
    for iA = 1: rA
        for jA = 1: colA
            [~, v1] = histc(cA(iA, jA, 1), stepSize);
            [~, v2] = histc(cA(iA, jA, 2), stepSize);
            [~, v3] = histc(cA(iA, jA, 3), stepSize);
            cA(iA, jA, 1) = stepSize(v1);
            cA(iA, jA, 2) = stepSize(v2);
            cA(iA, jA, 3) = stepSize(v3);
        end
    end
    for iH = 1: rH
        for jH = 1: colH
            [~, v1] = histc(cA(iH, jH, 1), stepSize);
            [~, v2] = histc(cA(iH, jH, 2), stepSize);
            [~, v3] = histc(cA(iH, jH, 3), stepSize);
            cH(iH, jH, 1) = stepSize(v1);
            cH(iH, jH, 2) = stepSize(v2);
            cH(iH, jH, 3) = stepSize(v3);
        end
    end
    for iV = 1: rV
        for jV = 1: colV
            [~, v1] = histc(cV(iV, jV, 1), stepSize);
            [~, v2] = histc(cV(iV, jV, 2), stepSize);
            [~, v3] = histc(cV(iV, jV, 3), stepSize);
            cV(iV, jV, 1) = stepSize(v1);
            cV(iV, jV, 2) = stepSize(v2);
            cV(iV, jV, 3) = stepSize(v3);
        end
    end
    for iD = 1: rD
        for jD = 1: colD
            [~, v1] = histc(cD(iD, jD, 1), stepSize);
            [~, v2] = histc(cD(iD, jD, 2), stepSize);
            [~, v3] = histc(cD(iD, jD, 3), stepSize);
            cV(iD, jD, 1) = stepSize(v1);
            cV(iD, jD, 2) = stepSize(v2);
            cV(iD, jD, 3) = stepSize(v3);
        end
    end

    outputImg = QThree(cA, cH, cV, cD, 1);
    outputImg = uint8(outputImg);
    if show == 0
        figure('Name', cat(2, 'Q5 quantized image quantization value ', num2str(qVal)));
        imshow(uint8(outputImg));
    end
end