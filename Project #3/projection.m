function pr = projection(x, a1, b1, a2, b2)
    pr = [0, 0];
    if(x(1) <= a1)
        pr(1) = a1;
    elseif(x(1) >= b1)
        pr(1) = b1;
    else
        pr(1) = x(1);
    end
    if(x(2) <= a2)
        pr(2) = a2;
    elseif(x(2) >= b2)
        pr(2) = b2;
    else
        pr(2) = x(2);
    end
end