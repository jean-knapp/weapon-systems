%% Mean Area of Effectiveness (Air Blast) - Inverse function
% Returns effective range of a blast effect give its Mean Area of 
% Effectiveness.
%
% *Author:* Jean Knapp
%
% *Date:* 2022-09-06

%% Inputs
% 
% * *range*   The effective range.
% 

%% Outputs
%
% * *mae:*    The mean area of effectiveness.
%

%% Implementation

function range = mae_blast_inv(mae)

    range = sqrt(mae / pi);

end