%% Equivalent Bare Charge (Hutchinson)
% Returns the equivalent weight of explosive as if there was no metal 
% casing.
%
% Valid for cylindric metal cases. Based on the Hutchinson equation.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *c*   The explosive charge weight.
% * *m:*  The metal casing weight.
% 

%% Outputs
%
% * *y:*    The base explosive charge equivalent weight (Ceb).
%

%% Implementation

function y = equivalent_bare_charge(c,m)

    y = c * sqrt(1 / (1 + 2 * m/c));

end