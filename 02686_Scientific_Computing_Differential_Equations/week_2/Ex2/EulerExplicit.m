function [T,X] = EulerExplicit(phunk, t0, tN, N, x0, virgins)

% Calculate fix time step
dt = (tN - t0)/N;
T = t0:dt:tN;
X = zeros(size(x0,1), N);

X(:,1) = x0;

for k = 1:N
%     f = feval(phunk, T(k), X(:,k), virgins{:});
    X(:, k+1) = X(:, k) + dt * phunk(T(k), X(:,k), virgins{:});
end
end