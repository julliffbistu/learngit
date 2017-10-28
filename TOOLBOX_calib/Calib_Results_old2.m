% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 832.956785740092530 ; 832.895098525059890 ];

%-- Principal point:
cc = [ 304.145544226842960 ; 208.605342171201530 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.228696619564418 ; 0.179280182900683 ; 0.001048912748328 ; 0.000110331429729 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 4.381283782317073 ; 4.312750234178777 ];

%-- Principal point uncertainty:
cc_error = [ 2.265903274852898 ; 2.216595556967644 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.012447162125008 ; 0.075859170799348 ; 0.000499084708531 ; 0.000513021917005 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 5;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.007513e-001 ; 1.181111e-001 ; 2.027751e-002 ];
Tc_1  = [ -3.842618e+000 ; 3.620164e+000 ; 1.280953e+001 ];
omc_error_1 = [ 2.792646e-003 ; 2.781468e-003 ; 3.198035e-004 ];
Tc_error_1  = [ 3.517132e-002 ; 3.465103e-002 ; 6.868869e-002 ];

%-- Image #2:
omc_2 = [ 1.825745e-001 ; 7.141818e-002 ; 1.129000e-002 ];
Tc_2  = [ -3.719414e+000 ; 3.735566e+000 ; 1.321498e+001 ];
omc_error_2 = [ 2.702933e-003 ; 2.692917e-003 ; 3.853882e-004 ];
Tc_error_2  = [ 3.614982e-002 ; 3.530430e-002 ; 6.824007e-002 ];

%-- Image #3:
omc_3 = [ -1.040113e-001 ; 4.145417e-001 ; 1.454504e-002 ];
Tc_3  = [ -2.946104e+000 ; 3.741355e+000 ; 1.426356e+001 ];
omc_error_3 = [ 2.657453e-003 ; 2.813313e-003 ; 5.729618e-004 ];
Tc_error_3  = [ 3.905622e-002 ; 3.800942e-002 ; 7.101611e-002 ];

%-- Image #4:
omc_4 = [ -9.746128e-002 ; -1.624405e-001 ; 2.550250e-002 ];
Tc_4  = [ -3.409298e+000 ; 3.605620e+000 ; 1.247067e+001 ];
omc_error_4 = [ 2.791323e-003 ; 2.847728e-003 ; 3.399484e-004 ];
Tc_error_4  = [ 3.493277e-002 ; 3.390325e-002 ; 6.663723e-002 ];

%-- Image #5:
omc_5 = [ 3.603251e-002 ; -1.636006e-001 ; 1.960917e-001 ];
Tc_5  = [ -4.075561e+000 ; 3.175076e+000 ; 1.436066e+001 ];
omc_error_5 = [ 2.976480e-003 ; 3.047055e-003 ; 3.524621e-004 ];
Tc_error_5  = [ 3.984816e-002 ; 3.872652e-002 ; 7.563741e-002 ];

