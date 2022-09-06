%% NORMCDF
% Returns the pdf of the normal distribution with mean mu and standard
% deviation sigma, evaluated at the values in x.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *x:*     Values at which to evaluate the pdf, specified as a scalar 
%            value or an array of scalar values.
% * *mu:*    Mean of the normal distribution, specified as a scalar value or
%            an array of scalar values.
% * *sigma:* Standard deviation of the normal distribution, specified as a 
%            positive scalar value or an array of positive scalar values.
% 

%% Outputs
%
% * *y:*     pdf values, evaluated at the values in x, returned as a scalar 
%            value or an array of scalar values.
%

%% Implementation

function y = normpdf(x, mu, sigma)

    y = 1 / (sigma * sqrt(2*pi)) * exp(-(x-mu)^2 / (2 * sigma^2));

end