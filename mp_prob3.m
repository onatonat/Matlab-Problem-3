function[] = mp_prob3(component)
x = component(:,1);
y = component(:,2);
least = inf;
format short g


for ctr =1:1:10
    if ctr >= length(x)
        break
    end
    p = polyfit(x,y,ctr);
    y2 = polyval(p,x); 
    e = y-y2;
    errorvector_norm = norm(e);
    if errorvector_norm < least
        least = errorvector_norm;
        bestfit = p;
    end
end
x3 = min(x):0.01:max(x);
y3 = polyval(bestfit,x3);
plot(x,y,'-*')
hold on 
plot(x3,y3,'-');
title('Polynomial Regression')
legend('Data points','Polynomial Curve')
hold off
bestfit


end