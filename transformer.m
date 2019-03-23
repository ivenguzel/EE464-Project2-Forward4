P=21;                                                       %Watts
J=500;                                                      %circ.mils/amp or 400 A/cm^2
K=0.0005;                                                   %constant 0.0005 for forward converter
B=2100;                                                     %max flux density for 100mW/cm^3 core loss in 30 kHz Gauss
f=30000;                                                    %frequency Hz
Vpmax=48;                                                   %maximum primary voltage V
Vpmin=24;                                                   %minimum primary voltage V
Ae=0.971;                                                   %cross section area for 0P43434EC cm^2
Vcore=7.64;                                                 %volume of the core in cm^3
Nt=3;                                                       %tertiary winding number of turns
A_17=0.0104;                                                %AWG 17 copper area in cm^2
R_17=16.61;
A_16=0.0131;
R_16=13.17;
A_15=0.0165;
R_15=10.45;
Window_3434=1.21/Ae;                                        %window area of 0P43434EC in cm^2

WA=P*J/(K*B*f);                                             %Area product 
Np=round(Vpmax*1e08/(4*B*f*Ae));                            %primary number of turns
Ns=round((6*Np)/(Vpmin*0.5));                               %secondary number of turns
Pc=Vcore*0.158*((f/1000)^1.36)*((B/1000)^2.86)/1000;        %Pc in W, f in kHz, B in kG
Le=(((0.256/2-0.111/2)/4)+0.111/2)*2*pi;                    %calculation of mean length per turn in m
Lcop=Le*(Np+Ns+Nt);                                         %total copper length in m
Kwind=A_15*(Np+Ns+Nt)/Window_3434;                          %winding factor of 0P43434EC
Rcop=R_15*Lcop;                                            %total dc resistance of copper in mOhm
Pcop=Rcop*16/1000;                                          %copper loss in Watts



