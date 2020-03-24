%Lab 1

clc; clear; clear all; 
x = xlsread('weather_laverton'); %import excel sheet
date = x(:,1);
rainfall = x(:,4);

[max_x, min_x] = missing(x); %call 'missing' function

figure (1)
tiledlayout(2,1)

nexttile
plot(max_x,'DisplayName','max')
hold on
plot(min_x,'DisplayName','min')
hold off
ylabel ('temperature (in celsius)')
lgd = legend;
lgd.NumColumns = 1;

nexttile
plot(rainfall,'DisplayName','rainfall')
ylabel ('rainfall (in mm)')
lgd = legend;
lgd.NumColumns = 1;

heavyrainfall = find(x(:,4)>80);
fprintf('Heavy rainfall occured on %d this year.\n',heavyrainfall);















%%% below code are trials - don't include
% heavyrainfall = find(x(:,4)>80);
% H = sprintf('Heavy rainfall occured on %d',heavyrainfall);
% disp(H)



% % numberBigger = sum(x(:,4)>1.8);


% A = x(:,4);
% A (A > '1.8');

% % nexttile
% % max_x = x(:, 2);
% % plot (x, max_x)
% % hold on
% % min_x = x(:, 3);
% % plot (x, min_x)
% % title ('Minimum and Maximum Temperatures')
% % hold off
% % 
% % legend('max_x','min_x')
% % 
% % %rainfall
% % nexttile
% % rainfall = x(:, 4);
% % plot (x, rainfall)
% % title ('Rainfall (mm)')










%% using 'missing' function instead of 'missing2'

% [max_x, min_x] = missing(x); %call 'missing' function

%% attempts

% max = x(:, 2);
% min = x(:, 3);

% for j = 1:length(max)
%     for k = 1:length(min)
%         if isnan (max(j))
%         max (j) = ((max(j-1)+max(j+1))/2);
%         elseif isnan (min(k))
%         min (k) = ((min(k-1)+min(k+1))/2);
%         end
%     end
% end

% for j = 1:length(max)
%     for k = 1:length(min)
%         if isnan (max(j))
%             max (j) = missing (max);
%         elseif isnan (min(k))
%             min (k) = missing (min);
%         end
%     end
% end

% % n = ismissing (min);
% % 
% % filledmin = min;
% % missing = find(isnan(min));
% % filledmin (missing) = ((min(missing+1)+min(missing-1))/2);
% %     
% % filledmax = max;
% % missing = find(isnan(max));
% % filledmax (missing) = ((max(missing+1)+max(missing-1))/2);


    
    
