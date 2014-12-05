% P Produktionskostnad
P = [25, 27, 26, 28];
% F Försäljningspris
F = [34, 32, 31, 30, 31];
% R = kostnad P - F
R = zeros((range(P) + 1), (range(F) + 1));

for i=1:(range(P) + 1),
    for j=1:(range(F) + 1),
        R(i,j) = P(i) - F(j);
    end
end

disp Försäljningskostnad
R

disp Transportkostnad
T = [3, 1, 5, 7, 7; 9, 7, 8, 4, 5; 5, 4, 6, 8, 6; 4, 5, 6, 9, 7]

disp Resultatmatris
R + T

% Specialfall alternativa transportsätt mellan F2 L3 med kostnad 3
disp('Specialfall alternativt transportsätt F2 L3')
R(2,3) + 3
