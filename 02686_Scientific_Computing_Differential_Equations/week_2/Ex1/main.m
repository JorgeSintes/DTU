%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  LINEAR PROBLEM %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
% t0 = 0;
% tN = 5;
% N = 20;
% x0 = 1;
% lambda = 1;
% params = {lambda};
% 
% [T, X] = EulerExplicit(@LinearMomma, t0, tN, N, x0, params);
% 
% figure() 
% plot(T(1:N), X)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  COSINE PROBLEM %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% t0 = 0;
% tN = 5;
% N = 20;
% x0 = 1;
% params = {};
% 
% [T, X] = EulerExplicit(@CosineMomma, t0, tN, N, x0, params);

% figure()
% plot(T(1:N), X)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%  VANDERPOL PROBLEM %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% t0 = 0;
% tN = 20;
% N = 20000;
% x0 = [2;2];
% mu = 1;
% params = {mu};
% 
% [T, X] = EulerExplicit(@VanDerPol, t0, tN, N, x0, params);
% 
% figure()
% plot(T(1:N), X);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%  PREY PROBLEM %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;
tN = 20;
N = 20000;
x0 = [2;2];
a = 2;
b = 2;
params = {a,b};

[T, X] = EulerExplicit(@PreyPredator, t0, tN, N, x0, params);

figure()

subplot(3,2,[1,2])
plot(T(1:N), X);

subplot(3,2,[3,4,5,6])
plot(X(1,:), X(2,:));



