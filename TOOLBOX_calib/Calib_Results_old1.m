% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 657.849557732262610 ; 658.391549433379620 ];

%-- Principal point:
cc = [ 302.626826381898130 ; 244.557212301136190 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.260884766366738 ; 0.155839769131846 ; 0.000044947295389 ; -0.000077840206086 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 0.507080009081612 ; 0.584365340307605 ];

%-- Principal point uncertainty:
cc_error = [ 1.152169809377782 ; 1.007974122390789 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.004606116508710 ; 0.021585468523515 ; 0.000225775490207 ; 0.000241551562393 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.656649e+000 ; 1.653796e+000 ; -6.686860e-001 ];
Tc_1  = [ -5.903865e+002 ; -2.874339e+002 ; 2.844024e+003 ];
omc_error_1 = [ 1.131162e-003 ; 1.581862e-003 ; 1.978123e-003 ];
Tc_error_1  = [ 4.982010e+000 ; 4.353933e+000 ; 2.195845e+000 ];

%-- Image #2:
omc_2 = [ 1.850779e+000 ; 1.902194e+000 ; -3.957456e-001 ];
Tc_2  = [ -5.151979e+002 ; -5.385027e+002 ; 2.525616e+003 ];
omc_error_2 = [ 1.157668e-003 ; 1.530867e-003 ; 2.313570e-003 ];
Tc_error_2  = [ 4.449259e+000 ; 3.857475e+000 ; 2.212759e+000 ];

%-- Image #3:
omc_3 = [ 1.743894e+000 ; 2.079353e+000 ; -5.036918e-001 ];
Tc_3  = [ -4.160800e+002 ; -5.895576e+002 ; 2.584980e+003 ];
omc_error_3 = [ 1.035387e-003 ; 1.620870e-003 ; 2.361608e-003 ];
Tc_error_3  = [ 4.548343e+000 ; 3.942909e+000 ; 2.163194e+000 ];

%-- Image #4:
omc_4 = [ 1.828923e+000 ; 2.119380e+000 ; -1.101521e+000 ];
Tc_4  = [ -2.134164e+002 ; -5.237151e+002 ; 2.596884e+003 ];
omc_error_4 = [ 9.464427e-004 ; 1.732603e-003 ; 2.375038e-003 ];
Tc_error_4  = [ 4.583606e+000 ; 3.940165e+000 ; 1.812239e+000 ];

%-- Image #5:
omc_5 = [ 1.081005e+000 ; 1.923854e+000 ; -2.506068e-001 ];
Tc_5  = [ -3.061947e+002 ; -7.710243e+002 ; 2.454930e+003 ];
omc_error_5 = [ 1.053494e-003 ; 1.705595e-003 ; 1.772902e-003 ];
Tc_error_5  = [ 4.356970e+000 ; 3.768018e+000 ; 2.192172e+000 ];

%-- Image #6:
omc_6 = [ -1.699977e+000 ; -1.926608e+000 ; -7.935865e-001 ];
Tc_6  = [ -4.955363e+002 ; -2.698739e+002 ; 1.483594e+003 ];
omc_error_6 = [ 1.015894e-003 ; 1.735667e-003 ; 2.246288e-003 ];
Tc_error_6  = [ 2.608185e+000 ; 2.311232e+000 ; 1.755018e+000 ];

%-- Image #7:
omc_7 = [ 1.998786e+000 ; 1.931014e+000 ; 1.313996e+000 ];
Tc_7  = [ -2.756929e+002 ; -2.634369e+002 ; 1.467956e+003 ];
omc_error_7 = [ 2.061977e-003 ; 9.268696e-004 ; 2.325795e-003 ];
Tc_error_7  = [ 2.608766e+000 ; 2.265953e+000 ; 1.848088e+000 ];

%-- Image #8:
omc_8 = [ 1.963534e+000 ; 1.823981e+000 ; 1.329096e+000 ];
Tc_8  = [ -5.663400e+002 ; -3.499299e+002 ; 1.541298e+003 ];
omc_error_8 = [ 1.939491e-003 ; 9.251279e-004 ; 2.181340e-003 ];
Tc_error_8  = [ 2.835580e+000 ; 2.467665e+000 ; 2.138443e+000 ];

%-- Image #9:
omc_9 = [ -1.362101e+000 ; -1.980054e+000 ; 3.181539e-001 ];
Tc_9  = [ -4.989989e+000 ; -7.577088e+002 ; 2.428497e+003 ];
omc_error_9 = [ 1.165234e-003 ; 1.521005e-003 ; 2.012765e-003 ];
Tc_error_9  = [ 4.295470e+000 ; 3.732169e+000 ; 2.230139e+000 ];

%-- Image #10:
omc_10 = [ -1.511781e+000 ; -2.086074e+000 ; 1.855775e-001 ];
Tc_10  = [ -9.712636e+001 ; -1.009914e+003 ; 2.866551e+003 ];
omc_error_10 = [ 1.310914e-003 ; 1.546158e-003 ; 2.452588e-003 ];
Tc_error_10  = [ 5.161680e+000 ; 4.421009e+000 ; 2.827786e+000 ];

%-- Image #11:
omc_11 = [ NaN ; NaN ; NaN ];
Tc_11  = [ NaN ; NaN ; NaN ];
omc_error_11 = [ NaN ; NaN ; NaN ];
Tc_error_11  = [ NaN ; NaN ; NaN ];

%-- Image #12:
omc_12 = [ NaN ; NaN ; NaN ];
Tc_12  = [ NaN ; NaN ; NaN ];
omc_error_12 = [ NaN ; NaN ; NaN ];
Tc_error_12  = [ NaN ; NaN ; NaN ];

%-- Image #13:
omc_13 = [ NaN ; NaN ; NaN ];
Tc_13  = [ NaN ; NaN ; NaN ];
omc_error_13 = [ NaN ; NaN ; NaN ];
Tc_error_13  = [ NaN ; NaN ; NaN ];

%-- Image #14:
omc_14 = [ NaN ; NaN ; NaN ];
Tc_14  = [ NaN ; NaN ; NaN ];
omc_error_14 = [ NaN ; NaN ; NaN ];
Tc_error_14  = [ NaN ; NaN ; NaN ];

%-- Image #15:
omc_15 = [ NaN ; NaN ; NaN ];
Tc_15  = [ NaN ; NaN ; NaN ];
omc_error_15 = [ NaN ; NaN ; NaN ];
Tc_error_15  = [ NaN ; NaN ; NaN ];

%-- Image #16:
omc_16 = [ NaN ; NaN ; NaN ];
Tc_16  = [ NaN ; NaN ; NaN ];
omc_error_16 = [ NaN ; NaN ; NaN ];
Tc_error_16  = [ NaN ; NaN ; NaN ];

%-- Image #17:
omc_17 = [ NaN ; NaN ; NaN ];
Tc_17  = [ NaN ; NaN ; NaN ];
omc_error_17 = [ NaN ; NaN ; NaN ];
Tc_error_17  = [ NaN ; NaN ; NaN ];

%-- Image #18:
omc_18 = [ NaN ; NaN ; NaN ];
Tc_18  = [ NaN ; NaN ; NaN ];
omc_error_18 = [ NaN ; NaN ; NaN ];
Tc_error_18  = [ NaN ; NaN ; NaN ];

%-- Image #19:
omc_19 = [ NaN ; NaN ; NaN ];
Tc_19  = [ NaN ; NaN ; NaN ];
omc_error_19 = [ NaN ; NaN ; NaN ];
Tc_error_19  = [ NaN ; NaN ; NaN ];

%-- Image #20:
omc_20 = [ NaN ; NaN ; NaN ];
Tc_20  = [ NaN ; NaN ; NaN ];
omc_error_20 = [ NaN ; NaN ; NaN ];
Tc_error_20  = [ NaN ; NaN ; NaN ];

