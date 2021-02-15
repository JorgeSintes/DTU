function [T,X] = TrapezoidalLinear(lambda, t0, tN, N, x0)

% Calculate fix time step
dt = (tN - t0)/N;
T = t0:dt:tN;
X = zeros(size(x0,1), size(x0,2), N+1);

X(:,:,1) = x0;

for k = 1:N
    X(:,:, k+1) = (eye(size(x0,1)) - 1/2*lambda * dt)^(-1) * (eye(size(x0,1)) + 1/2*lambda * dt) * X(:,:, k);
end
end