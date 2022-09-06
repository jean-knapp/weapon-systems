% normpdf

% Returns the pdf of the normal distribution with mean mu and standard 
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

function y = normpdf(x, mi, sigma)

    y = 1 / (sigma * sqrt(2*pi)) * exp(-(x-mi)^2 / (2 * sigma^2));

end