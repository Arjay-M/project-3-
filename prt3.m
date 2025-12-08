% Script switching colors of the Reedley College logo
RCtiger = imread("rcTiger.png");
subplot(2,1,1)
imshow(RCtiger)

% Set RGB layers for image
R = RCtiger(:, :, 1);
G = RCtiger(:, :, 2);
B = RCtiger(:, :, 3);

% Modify black colors to blue
black = R<50 & G<50 & B<50;
R(black) = 0;
G(black) = 100;
B(black) = 200;
newTiger(:, :, 1) = R;
newTiger(:, :, 2) = G;
newTiger(:, :, 3) = B;

% Modify orange colors to pink
orange = R>180 & G>80 & B<80;
R(orange) = 255;
G(orange) = 50;
B(orange) = 150;
newTiger(:, :, 1) = R;
newTiger(:, :, 2) = G;
newTiger(:, :, 3) = B;

% Modify white colors to yellow
white = R>200 & G>200 & B>200;
R(white) = 255;
G(white) = 255;
B(white) = 0;
newTiger(:, :, 1) = R;
newTiger(:, :, 2) = G;
newTiger(:, :, 3) = B;

% display new image
subplot(2,1,2)
imshow(newTiger)