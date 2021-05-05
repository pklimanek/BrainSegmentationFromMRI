clc;
close all;
clear all;

%wybor zdjec do zlozenia 3d
for i=1:139
    if i==1
        nazwapliku = sprintf('p%d', i);
        obraz = [nazwapliku, '.png'];
        data = imread(obraz);
    else
        nazwapliku = sprintf('p%d', i);
        obraz = [nazwapliku, '.png'];
        obraz2 = imread(obraz);
        data = cat(3,data,obraz2);
    end
end

%zlozenie 3d i wyrysowanie modelu
H = vol3d('CData',data);
axis tight;
daspect([256 224 139])
alphamap('decrease')
colormap([0.6 0.2 0.8])
alphamap(0.02 .* alphamap);
