% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2538.458104539774000 ; 2530.567588567409100 ];

%-- Principal point:
cc = [ 620.671735805435900 ; 495.302919712007390 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.138504654643057 ; 0.608716536967498 ; -0.001221247926227 ; -0.001577743052479 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 18.025900694935387 ; 17.569457430777454 ];

%-- Principal point uncertainty:
cc_error = [ 15.950884367178105 ; 12.038911630015615 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.033569508219659 ; 0.415628774282553 ; 0.001341447897509 ; 0.001612919348985 ; 0.000000000000000 ];

%-- Image size:
nx = 1392;
ny = 1040;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 12;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.697527e+000 ; -2.188267e+000 ; 4.515817e-001 ];
Tc_1  = [ -8.828951e+001 ; -1.054544e+002 ; 5.618628e+002 ];
omc_error_1 = [ 4.499476e-003 ; 4.782107e-003 ; 7.966458e-003 ];
Tc_error_1  = [ 3.549209e+000 ; 2.684480e+000 ; 3.898356e+000 ];

%-- Image #2:
omc_2 = [ -1.432822e+000 ; -2.089526e+000 ; 6.769533e-001 ];
Tc_2  = [ -5.287119e+001 ; -1.076049e+002 ; 5.703860e+002 ];
omc_error_2 = [ 4.597552e-003 ; 5.068550e-003 ; 6.944307e-003 ];
Tc_error_2  = [ 3.607692e+000 ; 2.718139e+000 ; 3.686537e+000 ];

%-- Image #3:
omc_3 = [ -1.523362e+000 ; -2.127369e+000 ; 6.038116e-001 ];
Tc_3  = [ -6.498887e+001 ; -1.072304e+002 ; 5.688588e+002 ];
omc_error_3 = [ 4.564903e-003 ; 4.969425e-003 ; 7.282641e-003 ];
Tc_error_3  = [ 3.598091e+000 ; 2.712732e+000 ; 3.765977e+000 ];

%-- Image #4:
omc_4 = [ -1.981207e+000 ; -2.257284e+000 ; 1.697557e-001 ];
Tc_4  = [ -1.035200e+002 ; -9.464936e+001 ; 5.344574e+002 ];
omc_error_4 = [ 4.318601e-003 ; 4.597594e-003 ; 9.245850e-003 ];
Tc_error_4  = [ 3.358298e+000 ; 2.558050e+000 ; 3.922854e+000 ];

%-- Image #5:
omc_5 = [ -2.144529e+000 ; -2.273724e+000 ; -3.566613e-002 ];
Tc_5  = [ -1.111403e+002 ; -9.929909e+001 ; 5.423538e+002 ];
omc_error_5 = [ 4.812849e-003 ; 4.913590e-003 ; 1.093876e-002 ];
Tc_error_5  = [ 3.436926e+000 ; 2.607488e+000 ; 3.892300e+000 ];

%-- Image #6:
omc_6 = [ 2.167466e+000 ; 2.165910e+000 ; 2.033218e-001 ];
Tc_6  = [ -9.609112e+001 ; -8.762126e+001 ; 5.159044e+002 ];
omc_error_6 = [ 4.523560e-003 ; 4.269418e-003 ; 9.674419e-003 ];
Tc_error_6  = [ 3.291804e+000 ; 2.476052e+000 ; 3.694893e+000 ];

%-- Image #7:
omc_7 = [ -2.115163e+000 ; -2.277579e+000 ; 1.293399e-003 ];
Tc_7  = [ -6.657993e+001 ; -1.052764e+002 ; 5.918696e+002 ];
omc_error_7 = [ 5.158497e-003 ; 5.654221e-003 ; 1.188827e-002 ];
Tc_error_7  = [ 3.741630e+000 ; 2.826822e+000 ; 4.243930e+000 ];

%-- Image #8:
omc_8 = [ 2.157777e+000 ; 2.144666e+000 ; 2.169665e-001 ];
Tc_8  = [ -8.142028e+001 ; -9.804038e+001 ; 5.728043e+002 ];
omc_error_8 = [ 4.796507e-003 ; 4.544135e-003 ; 1.014529e-002 ];
Tc_error_8  = [ 3.644329e+000 ; 2.736191e+000 ; 4.131213e+000 ];

%-- Image #9:
omc_9 = [ -1.665298e+000 ; -2.190295e+000 ; 4.791191e-001 ];
Tc_9  = [ -3.725751e+001 ; -1.196036e+002 ; 6.303415e+002 ];
omc_error_9 = [ 4.411618e-003 ; 4.755851e-003 ; 8.027554e-003 ];
Tc_error_9  = [ 3.981858e+000 ; 2.995891e+000 ; 4.317397e+000 ];

%-- Image #10:
omc_10 = [ -1.841913e+000 ; -2.234818e+000 ; 3.201757e-001 ];
Tc_10  = [ -5.441772e+001 ; -9.899984e+001 ; 6.478488e+002 ];
omc_error_10 = [ 4.488766e-003 ; 5.071595e-003 ; 9.199249e-003 ];
Tc_error_10  = [ 4.077452e+000 ; 3.080641e+000 ; 4.622398e+000 ];

%-- Image #11:
omc_11 = [ -2.041733e+000 ; -2.271725e+000 ; 1.125468e-001 ];
Tc_11  = [ -7.549138e+001 ; -9.406448e+001 ; 6.338314e+002 ];
omc_error_11 = [ 5.179896e-003 ; 5.827737e-003 ; 1.184953e-002 ];
Tc_error_11  = [ 3.987813e+000 ; 3.022188e+000 ; 4.635660e+000 ];

%-- Image #12:
omc_12 = [ 2.167836e+000 ; 2.194695e+000 ; 1.548483e-001 ];
Tc_12  = [ -5.318075e+001 ; -7.907666e+001 ; 5.994449e+002 ];
omc_error_12 = [ 5.174581e-003 ; 4.691792e-003 ; 1.092318e-002 ];
Tc_error_12  = [ 3.795131e+000 ; 2.854670e+000 ; 4.289932e+000 ];

