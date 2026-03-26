%Plotting the bandpass filter, with calculated values
C = 0.01 * 10^-6; % C = C_1 = C_2 = 0.01 micro Farads
R = 2494.6; % R = R_3 = R_6 = 2495 Ohlms
R_1 = 4989.2; % R_1 = 3989.2 Ohlms
R_2 = 24945.9; % R_2 = 24946 Ohlms
R_U = 10000; % R_U = R_4 = R_5 = 10000 Ohlms, any resistance value between R and R_2

H_1 = tf(-[1/(C*R_1) 0], [1 1/(C*R_2) 1/(C^2*R^2)]);

bode(H_1)
xline(6380*2*pi, 'r', 'Center Frequency (6380 Hz)');
axis([6380*2*pi-0.75*10^4 6380*2*pi+10^4 90 270]);

figure;
bode(H_1)
xline((6380-319)*2*pi, 'r', 'LP Cutoff Frequency');
xline((6380+319)*2*pi, 'r', 'HP Cutoff Frequency');
axis([6380*2*pi-0.75*10^4 6380*2*pi+10^4 90 270]);