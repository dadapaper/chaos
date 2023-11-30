% Logistic映射
function x_next = logistic_map(x, r)
    x_next = r * x * (1 - x);
end