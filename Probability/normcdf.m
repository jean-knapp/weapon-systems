% normcdf

% Returns the cdf of the normal distribution with mean mu and standard
% deviation sigma, evaluated at the values in x.

% Inputs

    % x     Values at which to evaluate the pdf, specified as a scalar
    %       value or an array of scalar values.

    % mi    Mean of the normal distribution, specified as a scalar value 
    %       or an array of scalar values.

    % sigma Standard deviation of the normal distribution, specified as a 
    %       positive scalar value or an array of positive scalar values.

% Outputs

    % y     pdf values, evaluated at the values in x, returned as a scalar 
    %       value or an array of scalar values.

function y = normcdf(x, mi, sigma)

    y = 1/2 - erf(sqrt(2) * (mi - x) / (2 * sqrt(sigma^2)))/2;

end