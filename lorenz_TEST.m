

% 设置参数
sigma = 10.0;
rho = 28.0;
beta = 8.0 / 3.0;

% 设置初始条件
xyz0 = [1.0, 0.0, 0.0];

% 定义时间范围
t_span = [0, 25];

% 解洛伦兹系统的微分方程
options = odeset('RelTol', 1e-6, 'AbsTol', 1e-6);
[t, xyz] = ode45(@(t, xyz) lorenz(t, xyz, sigma, rho, beta), t_span, xyz0, options);

% 绘制轨迹
figure;
plot3(xyz(:,1), xyz(:,2), xyz(:,3), 'LineWidth', 2);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Lorenz System');
grid on;
% 洛伦兹系统的微分方程
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