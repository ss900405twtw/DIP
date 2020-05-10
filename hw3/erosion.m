function ans= erosion(filename)
    grayImage = readraw(filename);   
    [rows, columns, numberOfColorChannels] = size(grayImage);
    
    se = logical([0 1 0 ; 1 1 1 ; 0 1 0]);
    [p, q]=size(se);
    halfHeight = floor(p/2);
    halfWidth = floor(q/2);% Initialize output image
    localMinImage = zeros(size(grayImage), class(grayImage));
% Perform local min operation, which is morphological erosion.
    for col = (halfWidth + 1) : (columns - halfWidth)
        for row = (halfHeight + 1) : (rows - halfHeight)
            % Get the 3x3 neighborhood
            row1 = row-halfHeight;
            row2 = row+halfHeight;
            col1 = col-halfWidth;
            col2 = col+halfWidth;
            thisNeighborhood = grayImage(row1:row2, col1:col2);
            % Apply the structuring element
            pixelsInSE = thisNeighborhood(se);
            localMinImage(row, col) = min(pixelsInSE);
        end
    end
    
    ans = grayImage - localMinImage; 
    writeraw(ans,"erosion_boundary.raw");
    imshow(uint8(readraw("erosion_boundary.raw")))
    
end