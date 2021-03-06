function qad = D2q2_desired(in1,in2,in3,in4,g)
%D2Q2_DESIRED
%    QAD = D2Q2_DESIRED(IN1,IN2,IN3,IN4,G)

%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    21-May-2015 15:59:30

Dthe2 = in2(5,:);
Dthe3 = in2(6,:);
control_v1 = in1(1,:);
control_v2 = in1(2,:);
r1 = in4(1,:);
r2 = in4(2,:);
r3 = in4(3,:);
the2 = in2(2,:);
the3 = in2(3,:);
t2 = the2+the3;
t3 = cos(the2);
t4 = cos(t2);
t5 = sin(t2);
t6 = sin(the2);
t7 = r1.^2;
t8 = r2.^2;
t9 = r3.^2;
t10 = r1.*r2.*t3.*2.0;
t11 = cos(the3);
t12 = r2.*r3.*t11.*2.0;
t13 = r1.*r3.*t4.*2.0;
t14 = t7+t8+t9+t10+t12+t13;
t15 = 1.0./sqrt(t14);
t16 = sin(the3);
t17 = r1.*r3.*t5.*2.0;
t18 = r1.*t5;
t19 = r2.*t16;
t20 = t18+t19;
t21 = 1.0./t14.^(3.0./2.0);
t22 = 1.0./r3;
t23 = 1.0./t20;
t24 = r3.*t5;
t25 = r2.*t6;
t26 = t24+t25;
qad = [control_v2;-sqrt(t14).*t22.*t23.*(control_v1+Dthe2.^2.*(r1.*t15.*(r2.*t3+r3.*t4)+r1.*t21.*t26.*(t17+r1.*r2.*t6.*2.0).*(1.0./2.0)).*3.0+Dthe3.^2.*(r3.*t15.*(r1.*t4+r2.*t11)+r3.*t20.*t21.*(t17+r2.*r3.*t16.*2.0).*(1.0./2.0)).*3.0)-control_v2.*r1.*t22.*t23.*t26];
