function [max_x, min_x] = missing(x)
%MISSING fills in the missing NANs 
%   This function replaces the NANs with average value between the number on top and bottom
%   Inputs:
%       max
%       min
%   Output:
%       missing NANs

max_x = x(:, 2);
min_x = x(:, 3);


for jj = 1:length(max_x)
    for kk = 1:length(min_x)
        if isnan (max_x(jj))
            max_x (jj) = ((max_x(jj-1)+max_x(jj+1))/2);
        elseif isnan (min_x(kk))
            min_x (kk) = ((min_x(kk-1)+min_x(kk+1))/2);
        elseif isnan (max_x(jj)>1)
            max_x = fillmissing (max_x,'nearest');
        end
    end
end





















% for j = 1:length(max)
%      for k = 1:length(min)
%          if isnan (max(j))
%             missingmax (j) = ((max(j-1)+max(j+1))/2);
%          elseif isnan (min(k))
%             missingmin (k) = ((min(k-1)+min(k+1))/2);
%          end
%      end
% end




% for j = 1:length(max)
%      for k = 1:length(min)
%          if isnan (max(j))
%             max (j) = ((max(j-1)+max(j+1))/2);
%          elseif isnan (min(k))
%             min (k) = ((min(k-1)+min(k+1))/2);
%          end
%      end
% end


% for j = 1:length(max)
%     for k = 1:length(min)
%         if isnan (max(j))
%         max (j) = ((max(j-1)+max(j+1))/2);
%         elseif isnan (min(k))
%         min (k) = ((min(k-1)+min(k+1))/2);
%         end
%     end
% end
% end

