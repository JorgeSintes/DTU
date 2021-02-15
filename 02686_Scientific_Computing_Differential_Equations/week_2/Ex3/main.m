%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Euler Explicit %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
t0 = 0;
tN = 50;
N = 5000;
x0 = [2;0];
mu = 10;
params = {mu};

[T, X] = EulerExplicit(@VanderPolfunjac, t0, tN, N, x0, params);
X 
plot(X(1,:), X(2,:))


%% Hey Bastard

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%  Euler Implicit %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Euler Implicit x in R
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
% 
% lambda = [1 1; 
%           1 1];
% x0 = [1 0;
%       0 1];
% 
% [T, X] = EulerImplicitLinear(lambda, t0, tN, N, x0);
% 
% X(:,:,end)
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
% 
% lambda = [1 1; 
%           1 1];
% x0 = [1 0;
%       0 1];
% 
% [T, X] = TrapezoidalLinear(lambda, t0, tN, N, x0);
% 
% X(:,:,end)
% expm(lambda)




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



