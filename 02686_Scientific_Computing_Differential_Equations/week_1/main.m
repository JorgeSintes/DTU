% % % % % % % % % % % % % % % % % % % % % % % % % % %
% VanDerPol
% % % % % % % % % % % % % % % % % % % % % % % % % % % 
 
% mu = 10;
% x0 = [2;0];

% [T,X] = ode45(@(t,x) VanDerPol(t,x,mu),[0 5*mu], x0);
% 
% figure()
% subplot(3,1,1);
% plot(T,X(:,1));
% 
% 
% subplot(3,1,2);
% plot(T,X(:,2));
% 
% 
% subplot(3,1,3);
% plot(X(:,1),X(:,2));

% % % % % % % % % % % % % % % % % % % % % % % % % % % 
% PreyPredator
% % % % % % % % % % % % % % % % % % % % % % % % % % % 

% a = 1;
% b = 1;
% x0 = [2; 2];
% 
% [T,X] = ode45(@(t,x) PreyPredator(t,x,a,b),[0 50], x0)
% 
% figure()
% plot(X(:,1),X(:,2));

% % % % % % % % % % % % % % % % % % % % % % % % % % % 
% Lorentz
% % % % % % % % % % % % % % % % % % % % % % % % % % % 

% sigma   = 10;
% rho     = 28;
% beta    = 8/3;
% 
% x0 = [rho-1 ; sqrt(rho*(beta-1)) ; sqrt(rho*(beta-1)) + 3]
% 
% [T,X] = ode45(@(t,x) Lorentz(t,x,sigma,rho,beta),[0 50], x0)
% 
% figure()
% 
% subplot(6,2,1);
% plot(T,X(:,1),'b');
% 
% subplot(6,2,3);
% plot(T,X(:,2), 'r');
% 
% subplot(6,2,5);
% plot(T,X(:,3), 'g');
% 
% subplot(6,2,[2 4 6]);
% plot(X(:,1),X(:,2));
% 
% 
% subplot(6,2,[7 9 11]);
% plot(X(:,1),X(:,3));
% 
% 
% subplot(6,2,[8 10 12]);
% plot(X(:,2),X(:,3));


% % % % % % % % % % % % % % % % % % % % % % % % % % % 
% BROsselator
% % % % % % % % % % % % % % % % % % % % % % % % % % % 

A = 1;
B = 3;

x0 = [4;4];
x1 = [4;0];
x2 = [0;0];
x3 = [0;4];
x4 = [2;2];

[T0,X0] = ode45(@(t,x) BROsselator(t,x,A,B),[0 50], x0);
[T1,X1] = ode45(@(t,x) BROsselator(t,x,A,B),[0 50], x1);
[T2,X2] = ode45(@(t,x) BROsselator(t,x,A,B),[0 50], x2);
[T3,X3] = ode45(@(t,x) BROsselator(t,x,A,B),[0 50], x3);
[T4,X4] = ode45(@(t,x) BROsselator(t,x,A,B),[0 50], x4);


figure()

subplot(2,2,[1 3]);
plot(X0(:,1),X0(:,2),X1(:,1),X1(:,2),X2(:,1),X2(:,2),X3(:,1),X3(:,2),X4(:,1),X4(:,2));

subplot(2,2,2);
plot(T0,X0(:,1));

subplot(2,2,4);
plot(T0,X0(:,2));