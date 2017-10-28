Al = [fc_left(1) 0 cc_left(1) 0; 0 fc_left(2) cc_left(2) 0; 0 0 1 0];
M1 = Al * [Rc_left_1 Tc_left_1; 0 0 0 1];
Ar = [fc_right(1) 0 cc_right(1) 0; 0 fc_right(2) cc_right(2) 0; 0 0 1 0];
M2 = Ar * [Rc_1 Tc_1; 0 0 0 1];
M11=M1(:,1:3);
m1=M1(:,4);
M21=M2(:,1:3);
m2=M2(:,4);
m=m2-M21*inv(M11)*m1;
%获取m反对称矩阵
Antisymmetric_m=[0 -m(3) m(2);m(3) 0 -m(1);-m(2) m(1) 0];
F=Antisymmetric_m*M21*inv(M11);