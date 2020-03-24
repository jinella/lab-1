function [max_x, min_x] = missing3(x)
%MISSING2 fills in the missing NANs 
%   This function replaces the NANs with average value between the number on top and bottom
%   Inputs:
%       x
%   Output:
%       missing NANs

max = x(:, 2);
min = x(:, 3);

max_x = fillmissing(max,'nearest',1,'EndValues','nearest');
min_x = fillmissing(min,'nearest',1,'EndValues','nearest');

end

