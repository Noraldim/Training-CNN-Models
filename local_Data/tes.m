output_folder = 'resized';
mkdir(output_folder);

for i = 1:71
    filename = sprintf('%d.jpg', i);
    img = imread(filename);
    img = imresize(img, [128 128]);  % Resize down

    % Save resized version
    outname = sprintf('%s/%d.jpg', output_folder, i);
    imwrite(img, outname);
end

