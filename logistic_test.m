

% 设置参数
r = 3.9; % 可调整的参数

% 设置初始条件
x0 = 0.5;

% 定义时间范围
num_steps = 1000;
x = zeros(1, num_steps);
x(1) = x0;

% 计算Logistic映射的轨迹
for i = 2:num_steps
    x(i) = logistic_map(x(i-1), r);
end

% 绘制轨迹
figure;
plot(1:num_steps, x, 'LineWidth', 2);
xlabel('时间步');
ylabel('X');
title(['Logistic映射 (r = ' num2str(r) ')']);
grid on;
