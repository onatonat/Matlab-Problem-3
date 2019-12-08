function c = mp_prob3(x)

X = x(:,1);
Y = x(:,2);

if length(X)>=11
    L = 10;
else
    L = length(X)-1;
end
    nm = zeros(1,L);

for i = 1:L
    fit = polyfit(X,Y,i);
    val = polyval(fit,X);
    nm(i) = norm(Y-val);
end

[~,I] = min(nm);
coeff = polyfit(X,Y,I);

disp(coeff)