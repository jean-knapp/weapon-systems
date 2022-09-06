%% Equivalent Charge
% Returns the equivalent weight of explosive as if it were TNT 
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
% * *w:*  The equivalent mass of TNT.
% 

%% Outputs
%
% * *y:*    The equivalent mass of explosive charge in TNT.
%

%% Implementation

function y = equivalent_charge(c,w)

    y = c * w;

end