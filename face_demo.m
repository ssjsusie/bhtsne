clear;
load('face_data_for_visual.mat');
digits = D.data';
im = D.label;
numDims = 2; pcaDims = 50; perplexity = 50; theta = .5;
map = fast_tsne(digits', numDims, pcaDims, perplexity, theta);
figure(3);
for i=1:size(im,3)
    imagesc(map(i,1)*38,map(i,2)*38,im2single(im(:,:,:,i)));  % to view better
    axis([-1400 1400 -1400 1400]);
    colormap(gray);
    hold on;
end