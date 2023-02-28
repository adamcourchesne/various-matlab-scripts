%Given:
PInjector = 300*10^3;
DTubing = 3*10^-3;
LTubing = 5;
LNeedle = 0.04;
DNeedle = 0.455*10^-3;
PNeedle = 1.333*10^3;
density = 1000;
funnyV = 10^-6;
AlphaA = 0;
AlphaB = 0;
AreaT = pi*(DTubing/2)^2;
AreaN = pi*(DNeedle/2)^2;

%Inputs:
Va = 0.5;

%Pre-Calculations
ReTubing = Va*DTubing/funnyV

QA = Va*AreaT

Vb = QA/AreaN

ReNeedle = Vb*DNeedle/funnyV

if ReNeedle > 2300
    AlphaB = 1;
else
    AlphaB = 2;
end


if ReTubing > 2300
    AlphaA = 1;
else
    AlphaA = 2;
end

