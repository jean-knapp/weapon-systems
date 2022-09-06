%% NORMCDF
% Returns the cdf of the normal distribution with mean mu and standard
% deviation sigma, evaluated at the values in x.
%
% Author: *Jean Knapp* 

%% Inputs
% 
% * x       Values at which to evaluate the pdf, specified as a scalar 
%           value or an array of scalar values.
% * mu      Mean of the normal distribution, specified as a scalar value or 
%           an array of scalar values.
% * sigma   Standard deviation of the normal distribution, specified as a 
%           positive scalar value or an array of positive scalar values.
% 

%% Outputs
%
% * y       cdf values, evaluated at the values in x, returned as a scalar 
%           value or an array of scalar values. p is the same size as x, 
%           mu, and sigma after any necessary scalar expansion. Each 
%           element in p is the cdf value of the distribution specified by 
%           the corresponding elements in mu and sigma, evaluated at the 
%           corresponding element in x.
%

%% Implementation

function y = normcdf(x, mu, sigma)

    y = 1/2 - erf(sqrt(2) * (mu - x) / (2 * sqrt(sigma^2)))/2;

end