function plotFrame(T, varargin)
if ~isempty(varargin)
    k = varargin{1};
else
    k = 1;
end
x = [k 0 0 1]';
y = [0 k 0 1]';
z = [0 0 k 1]';

Op = T * [0 0 0 1]';
xp = T * x;
yp = T * y;
zp = T * z;

plot3([Op(1) xp(1)], [Op(2) xp(2)], [Op(3) xp(3)], 'r', 'LineWidth', 2)
% hold on
plot3([Op(1) yp(1)], [Op(2) yp(2)], [Op(3) yp(3)], 'b', 'LineWidth', 2)
plot3([Op(1) zp(1)], [Op(2) zp(2)], [Op(3) zp(3)], 'g', 'LineWidth', 2)
% hold off