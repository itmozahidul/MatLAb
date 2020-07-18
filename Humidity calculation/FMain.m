function FMain(filename)
Data=importdata(filename);
T_u=Data(:,1);
T_f=Data(:,2);
dif=abs(T_u-T_f);

%Input single dry  S_T_u and wet S_T_f temperature
S_T_u = input(' Enter Tu ');
S_T_f = input(' Enter Tf ');

res=humiditycalculation(S_T_u,S_T_f);%result contains relative and absolute humidity

disp('relative humidity (has no unit)');
disp(res(1));

disp('absolute humidity in g/m^3');
disp(res(2));




plot(T_u,dif,'.-.k');
axis([10,60,0,40]);
grid on;
grid minor;
title('Graph');
xlabel('Tu');
ylabel('difference');





