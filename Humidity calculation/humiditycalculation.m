% Thermodynamics lab to calculate relative and absolute humidity
 

function [res] = humiditycalculation(T_u,T_f)
% RHO_w = Relative Humidity it doesnt have unit because it is ratio
% AH = Absolute humidity [g/m3]
% T_u = non saturated temparature [°C]
% T_f = saturated temparature [°C]
 
const_Rw = 0.4615;%j/kg.k
const_ghama = 66; % Pa/k
%using bulk equation  equation
%vapour pressure
 pws =1000*((0.61121)*(exp((18.678 - (T_f/234.84))*(T_f/(257.14+T_f)))));%pascel in case of wet bulb temperature
 pdws =1000*((0.61121)*(exp((18.678 - (T_u/234.84))*(T_u/(257.14+T_u)))));%pascel in case of dry bulb temperature
%partial pressure
 pw = pws-(const_ghama*(T_u-T_f));%pascel

RHO_w=pw/pdws;%relative humidity
AH=(pw/(const_Rw*(T_u+273.15)));%Kg/m3  absolute humidity
res=[RHO_w AH];
end 



 
