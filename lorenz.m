function dxdt = lorenz(t, xyz, sigma, rho, beta)
    x = xyz(1);
    y = xyz(2);
    z = xyz(3);
    
    dxdt = [
        sigma * (y - x);
        x * (rho - z) - y;
        x * y - beta * z
    ];
end