function [outputImg] = QThree(cA, cH, cV, cD, show)
%% show variable is to determine wether to show the output(0) or not.
    outputImg = idwt2(cA,cH,cV,cD,'db1');
    if show == 0
        figure('Name', 'Q3 reconstructed img.');
        imshow(uint8(outputImg));
    end
end