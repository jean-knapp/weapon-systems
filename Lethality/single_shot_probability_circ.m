%% Single Shot Probability (Circle)
% Returns the probability that a single shot fired at a target will hit
% that target within a given radius.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *x:*     The radius of the circle.
% * *cep:*   The circular error probable, which is the radius which contains
%            50% of all shots.
% 

%% Outputs
%
% * *y:*     the single shot probability, evaluated at the values in x, 
%            returned as a scalar value or an array of scalar values.
%

%% Implementation

function y = single_shot_probability_circ(x, cep)

    y = 1 - exp(log(0.5) * (x / cep)^2);

end