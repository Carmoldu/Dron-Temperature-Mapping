X = -3 + 6.*gallery('uniformdata',[250 2],0);
V = peaks(X(:,1),X(:,2));
F = scatteredInterpolant(X,V)

Vq = F([1.5 1.25])