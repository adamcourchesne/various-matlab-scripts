%Given:
PInjector = 300*10^3;
DTubing = 3*10^-3;
LTubing = 5;
LNeedle = 0.04;
DNeedle = 0.455*10^-3;
PNeedle = 1.333*10^3;
density = 1000;
funnyV = 10^-6;

%Found using https://www.advdelphisys.com/michael_maley/moody_chart/
%Reynolds number set to ReNeedle and ReTubing, Relative Roughness set to 0
FdTubing = 0.0785276073619632;
FdNeedle = 0.0366282928933783;

numerator = 2*(PInjector-PNeedle);
term1 = (1/AreaT^2)*((LTubing*FdTubing)/(DTubing) - AlphaA);
term2 = (1/AreaN^2)*((LNeedle*FdNeedle)/(DNeedle) + AlphaB);
denominator = density * (term1 + term2);

Qdeltap = sqrt(numerator/denominator)
