% Extract
t     = out.Q_data{1}.Values.Time;
Q     = out.Q_data{1}.Values.Data;

t2      = out.AOA_data{1}.Values.Time;
AOA_ref = out.AOA_data{1}.Values.Data(:,1);
AOA_act = out.AOA_data{1}.Values.Data(:,2);

t3    = out.Delta_data{1}.Values.Time;
Delta = out.Delta_data{1}.Values.Data;

t4    = out.DeltaDot_data{1}.Values.Time;
Ddot  = out.DeltaDot_data{1}.Values.Data;

% ── Plot ──────────────────────────────────────────────
figure('Color','w','Units','normalized','Position',[0.1 0.1 0.8 0.7])

subplot(2,2,1)
plot(t, Q, 'r', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 14)
ylabel('Q (rad/s)', 'FontSize', 14)
title('Pitch Rate', 'FontSize', 14)
set(gca, 'FontSize', 13)
ylim([-5 50])
grid on; box on

subplot(2,2,2)
plot(t4, Ddot, 'b', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 14)
ylabel('$\dot{\delta}$ (rad/s)', 'Interpreter','latex', 'FontSize', 14)
title('Delta Dot', 'FontSize', 14)
set(gca, 'FontSize', 13)
ylim([-55 10])
grid on; box on

subplot(2,2,3)
plot(t2, AOA_ref, 'k--', 'LineWidth', 1.5); hold on
plot(t2, AOA_act, 'm', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 14)
ylabel('AOA (rad)', 'FontSize', 14)
title('Angle of Attack', 'FontSize', 14)
legend('Reference', 'Actual', 'Location', 'southeast', 'FontSize', 12)
set(gca, 'FontSize', 13)
ylim([-1 18])
grid on; box on

subplot(2,2,4)
plot(t3, Delta, 'g', 'LineWidth', 1.5)
xlabel('Time (sec)', 'FontSize', 14)
ylabel('\delta (rad)', 'FontSize', 14)
title('Tail Deflection', 'FontSize', 14)
set(gca, 'FontSize', 13)
ylim([-22 2])
grid on; box on

sgtitle('System Response', 'FontSize', 15, 'FontWeight', 'bold')