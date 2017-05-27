function [cA, cH, cV, cD] = QTwo(inputImg, show)
%% show variable is to determine wether to show the output(0) or not.
    [cA, cH, cV, cD] = dwt2(inputImg, 'db1');
    if show == 0 
        figure('Name', 'Q2 cA');
        imshow(uint8(cA));
        figure('Name', 'Q2 cH');
        imshow(uint8(cH));
        figure('Name', 'Q2 cV');
        imshow(uint8(cV));
        figure('Name', 'Q2 cD');
        imshow(uint8(cD));
    end
end