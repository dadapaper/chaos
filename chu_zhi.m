% 设置参数
r = 3.9; % 可调整的参数

% 设置两个初始条件
initial_conditions = [0.2, 0.201];

% 定义时间范围
num_steps = 100;

% 定义绘图颜色
colors = {'b', 'r'};

% 计算并绘制两个初始条件下的Logistic映射轨迹
figure;
hold on;

for i = 1:length(initial_conditions)
    x = zeros(1, num_steps);
    x(1) = initial_conditions(i);

    for j = 2:num_steps
        x(j) = logistic_map(x(j-1), r);
    end

    plot(1:num_steps, x, 'LineWidth', 1, 'Color', colors{i}, 'DisplayName', ['Initial: ' num2str(initial_conditions(i))]);
end

hold off;

xlabel('迭代次数');
ylabel('X');
title(['Logistic映射的初值敏感性 (r = ' num2str(r) ')']);
legend('Location', 'Best');
grid on;

