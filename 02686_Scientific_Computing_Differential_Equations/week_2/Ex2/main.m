%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Euler Explicit %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
% t0 = 0;
% tN = 5;
% N = 50;
% x0 = 1;
% lambda = 1;
% params = {lambda};
% 
% [T, X] = EulerExplicit(@LinearMomma, t0, tN, N, x0, params);
% 
% figure() 
% plot(T, X)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Euler Implicit %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Euler Implicit x in R

t0 = 0;
tN = 1;
N = 500;
% x0 = 1;
% lambda = 1;
% 
% [T, X] = EulerImplicitLinear(lambda, t0, tN, N, x0);
% 
% figure() 
% plot(T, X)

% Euler Implicit x in R^N

% lambda = [1 1; 
%           1 1];
% x0 = [1
%       1];
% 
% [T, X] = EulerImplicitLinear(lambda, t0, tN, N, x0);

%%%%% Euler Implicit x in R^NxN %%%%%%

lambda = [1 1; 
          1 1];
x0 = [1 0;
      0 1];

[T, X] = EulerImplicitLinear(lambda, t0, tN, N, x0);

X(:,:,end)
% expm(lambda)
      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%   Trapezoidal   %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Euler Implicit x in R

% t0 = 0;
% tN = 1;
% N = 10;

% x0 = 1;
% lambda = 1;
% 
% [T, X] = TrapezoidalLinear(lambda, t0, tN, N, x0);
% 
% figure() 
% plot(T, X)

% Euler Implicit x in R^N

% lambda = [1 1; 
%           1 1];
% x0 = [1
%       1];
% 
% [T, X] = TrapezoidalLinear(lambda, t0, tN, N, x0);

%%%%% Euler Implicit x in R^NxN %%%%%%

lambda = [1 1; 
          1 1];
x0 = [1 0;
      0 1];

[T, X] = TrapezoidalLinear(lambda, t0, tN, N, x0);

X(:,:,end)
expm(lambda)




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

% t0 = 0;
% tN = 20;
% N = 20000;
% x0 = [2;2];
% a = 2;
% b = 2;
% params = {a,b};
% 
% [T, X] = EulerExplicit(@PreyPredator, t0, tN, N, x0, params);
% 
% figure()
% 
% subplot(3,2,[1,2])
% plot(T(1:N), X);
% 
% subplot(3,2,[3,4,5,6])
% plot(X(1,:), X(2,:));



