%%
%m1 total, m1 tapping, m1 others
m1color = [0, 0.4470, 0.7410;0.4940, 0.1840, 0.5560;0.4660, 0.6740, 0.1880];
s1color = [0.8500, 0.3250, 0.0980];
%% iTBS over M1
f = performanceFigureSetup;

%plot reference exp curve
%plot(1:5, exp(-0.05*[1,2,3,4,5]),'LineWidth',2,'MarkerSize',10); % show exponential decay fit. optional 
x2=[5,6,7,10,13,20]; % for fitted curve plotting
x1 = x2(2:end)-5;

%plot "actual" data -
x = [1,2,3,4,5;6,7,10,13,20]; %connecting data; then exp fitting
%fit value yhat =[0.9512,0.9048,0.8607,0.8187,0.7788,0.801,0.8118,0.8434,0.8737,0.9396]
%control - grand average higher, rate = -0.05
y = [0.9512,0.8898,0.8507,0.8180,0.7900;0.793,0.80,.838,0.8739,0.945]; 
plot(x(1,:),y(1,:),'x-k','LineWidth',3,'MarkerSize',10);
control=plot(x(2,:),y(2,:),'xk','LineWidth',3,'MarkerSize',10);
%exp fit, force starting at 0.79
cf = plot(x2,[0.79 (2-exp(-0.014*x1)) * 0.79],'--k','LineWidth',3,'MarkerSize',10); % show exponential fit for forgetting
%M1 - grand average - lower, rate = -0.09
%plot(1:5, [0.9512,0.9512*exp(-0.09*[1,2,3,4])],'LineWidth',2,'MarkerSize',10); % show exponential decay fit. optional 
% fitted value: [0.9512,0.8693,0.7945,0.7261,0.6636;0.6793,0.6885,0.7153,0.7410,0.7969]; 
ym1 = [0.9512,0.8693,0.798,0.73,0.67;0.6767,0.683,0.715,0.743,0.805];
plot(x(1,:),ym1(1,:),'x-','Color',[0, 0.4470, 0.7410],'LineWidth',3,'MarkerSize',10);
m = plot(x(2,:),ym1(2,:),'x','Color',[0, 0.4470, 0.7410],'LineWidth',3,'MarkerSize',10);
%exp fit
mf = plot(x2,[0.67 (2-exp(-0.014*x1)) * 0.67],'--','Color',[0, 0.4470, 0.7410],'LineWidth',2,'MarkerSize',10); 
%tapping - better performance, lower curve, rate = - 0.11
%get decay parameter [0.9512,0.9512*exp(-0.11*[1,2,3,4])
% ym1_t = [0.9512,0.8521,0.7634,0.6838,0.6126; 0.6236, 0.6320, 0.6566, 0.6802, 0.7315]; 
ym1_t = [0.9512,0.85,0.7338,0.68,0.615;0.624,0.6315,0.657,0.6815,0.735];
plot(x(1,:),ym1_t(1,:),'x-','Color',[0.9290, 0.6940, 0.1250],'LineWidth',3,'MarkerSize',10);
mtap = plot(x(2,:),ym1_t(2,:),'x','Color',[0.9290, 0.6940, 0.1250],'LineWidth',3,'MarkerSize',10);
%exp fit
mtapfit = plot(x2,[0.615 (2-exp(-0.014*x1)) * 0.615],'--','Color',[0.9290, 0.6940, 0.1250],'LineWidth',3,'MarkerSize',10);
%other tasks - higher curve, rate = -0.07
%calculation eqn: [0.9512,0.9512*exp(-0.07*[1,2,3,4])]
%fitted val = [0.9512, 0.8869, 0.8269, 0.7710, 0.7189; 0.7300    0.7399    0.7687    0.7963    0.8564]
ym1_other = [0.9512,0.888,0.824,0.769,0.72;0.728,0.7399,0.769,0.797,0.858];
plot(x(1,:),ym1_other(1,:),'x-','Color',[0.4660, 0.6740, 0.1880],'LineWidth',3,'MarkerSize',10);
mother = plot(x(2,:),ym1_other(2,:),'x','Color',[0.4660, 0.6740, 0.1880],'LineWidth',3,'MarkerSize',10);
%exp fit
motherfit = plot(x2,[0.72 (2-exp(-0.014*x1)) * 0.72],'--','Color',[0.4660, 0.6740, 0.1880],'LineWidth',3,'MarkerSize',10);
ax = gca;
ax.FontSize = 30;
% legend({'Sham','Sham Decay','Sham Exp Fitted','iTBS Over M1','M1 Decay',...
%     'M1 Exp Fitted','M1-Tapping','M1-Tapping','M1-Tapping Exp Fitted','M1-Others','M1-Others','M1-Others Exp Fitted'},'Location','bestoutside');


%% S1
f1 = performanceFigureSetup;
%fit value yhat =[0.9512,0.9048,0.8607,0.8187,0.7788,0.801,0.8118,0.8434,0.8737,0.9396]
%control - grand average higher, rate = -0.05
plot(x(1,:),y(1,:),'x-k','LineWidth',2,'MarkerSize',10);
plot(x(2,:),y(2,:),'xk','LineWidth',2,'MarkerSize',10);
%exp fit, force starting at 0.79
plot(x2,[0.79 (2-exp(-0.014*x1)) * 0.79],'--k','LineWidth',2,'MarkerSize',10); % show exponential fit for forgetting
%S1 - grand average - lower, rate = -0.115 
%tapping - better performance, lower curve, rate = - 0.11
%get decay parameter [0.9512,0.9512*exp(-0.115 *[1,2,3,4])]
% ym1_t = [0.9512,0.8479,0.7558,0.6737,0.6005; 0.6185, 0.6268, 0.6512, 0.6746, 0.7255]; 
ys = [0.9512,0.85,0.75,0.67,0.61;0.6185,0.625,0.655,0.68,0.73];
plot(x(1,:),ys(1,:),'x-','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);
plot(x(2,:),ys(2,:),'x','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);
%exp fit
plot(x2,[0.61 (2-exp(-0.014*x1)) * 0.61],'--','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);
ax = gca;
ax.FontSize = 30;
legend({'Sham','Sham Decay','Sham Exp Fitted','iTBS Over S1','S1 Decay','S1 Exp Fitted'},'Location','bestoutside');

%% M1 and S1
f2 = performanceFigureSetup;
%control - grand average higher, rate = -0.05
plot(x(1,:),y(1,:),'x-k','LineWidth',2,'MarkerSize',10);
plot(x(2,:),y(2,:),'xk','LineWidth',2,'MarkerSize',10);
%exp fit, force starting at 0.79
plot(x2,[0.79 (2-exp(-0.014*x1)) * 0.79],'--k','LineWidth',2,'MarkerSize',10); % show exponential fit for forgetting

%M1 - grand average - lower, rate = -0.09
ym1 = [0.9512,0.8693,0.798,0.73,0.67;0.6767,0.683,0.715,0.743,0.805];
plot(x(1,:),ym1(1,:),'x-','Color',[0, 0.4470, 0.7410],'LineWidth',2,'MarkerSize',10);
plot(x(2,:),ym1(2,:),'x','Color',[0, 0.4470, 0.7410],'LineWidth',2,'MarkerSize',10);
%exp fit
plot(x2,[0.67 (2-exp(-0.014*x1)) * 0.67],'--','Color',[0, 0.4470, 0.7410],'LineWidth',2,'MarkerSize',10); 

% S1
ys = [0.9512,0.85,0.75,0.67,0.61;0.6185,0.625,0.655,0.68,0.73];
plot(x(1,:),ys(1,:),'x-','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);
plot(x(2,:),ys(2,:),'x','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);
%exp fit
plot(x2,[0.61 (2-exp(-0.014*x1)) * 0.61],'--','Color',[0.8500, 0.3250, 0.0980],'LineWidth',2,'MarkerSize',10);

ax = gca;
ax.FontSize = 25;
legend({'Sham','Sham Decay','Sham Exp Fitted','iTBS Over M1','M1 Decay','M1 Exp Fitted','iTBS Over S1','S1 Decay','S1 Exp Fitted'},'Location','bestoutside');

%% Retention M1
yret=[0.8,0.82,0.85,0.9,0.95];
figure; hold on;
yrets = [yret;yret+(1-yret)*0.4;yret+(1-yret)*0.55;yret+(1-yret)*0.3]';
b = bar(yrets);
b(3).LineWidth=2;
b(1).FaceColor = 'k';
b(1).EdgeColor = 'k';
for i =1:3
    if (i ==1)
        b(i+1).FaceColor = m1color(i,:);
    else
        b(i+1).FaceColor = 'none'; 
        b(i+1).LineWidth=2;
    end
    b(i+1).EdgeColor = m1color(i,:);
end
xticks(1:5);
xticklabels({'2','3','4','5','6'});
yticks(0.99);
yticklabels({'100'});
xlabel("Days (Training + First Retest)");
ylabel("Raetention %");
ax = gca;
ax.FontSize = 25;
legend({'Sham Stimulation','iTBS over M1','M1-Tapping', 'M1-Others'},'Orientation','Horizontal','Location','bestoutside');

%% Retention S1
yret=[0.8,0.82,0.85,0.9,0.95];
figure; hold on;
yrets = [yret;yret+(1-yret)*0.6;yret+(1-yret)*0.605;yret+(1-yret)*0.595]';
b = bar(yrets);
b(3).LineWidth=2;
b(1).FaceColor = 'k';
b(1).EdgeColor = 'k';
for i =1:3
    if (i ==1)
        b(i+1).FaceColor = s1color(i,:);
        b(i+1).EdgeColor = s1color(i,:);
    else
        b(i+1).FaceColor = 'none'; 
        b(i+1).LineWidth=2;
        b(i+1).EdgeColor = m1color(i,:);
    end    
end
xticks(1:5);
xticklabels({'2','3','4','5','6'});
yticks(0.99);
yticklabels({'100'});
xlabel("Days (Training + First Retest)");
ylabel("Raetention %");
ax = gca;
ax.FontSize = 25;
legend({'Sham Stimulation','iTBS over S1','S1-Tapping', 'S1-Others'},'Orientation','Horizontal','Location','bestoutside');

%% Retention M1, S1
xret = [1,4,7,10,13];
yret=[0.8,0.82,0.85,0.9,0.95];
figure; hold on;
yrets = [yret;yret+(1-yret)*0.4;yret+(1-yret)*0.6]'/2;
b = bar(yrets);
b(1).FaceColor = 'k';
b(2).FaceColor = m1color(1,:);
b(2).EdgeColor = m1color(1,:);
b(3).FaceColor = s1color;
b(3).EdgeColor = s1color;
xticks(1:5);
xticklabels({'2','3','4','5','6'});
yticks(0.99/2);
yticklabels({'100'});
xlabel("Days (Training + First Retest)");
ylabel("Raetention %");
ax = gca;
ax.FontSize = 25;
legend({'Control','iTBS over M1','iTBS over S1'},'Orientation','Horizontal','Location','bestoutside');

%% Decay Parameter: same for control, M1, M1-tapping, M1-others;
xdecay = 1:4;
ydecay=[0.014,0.0139,0.01405,0.01403];
figure; hold on;
bar(xdecay(1),ydecay(1),'FaceColor','k');
bar(xdecay(3),ydecay(3),'FaceColor','none','EdgeColor',m1color(2,:),'LineWidth',3);
bar(xdecay(4),ydecay(4),'FaceColor','none','EdgeColor',m1color(3,:),'LineWidth',3);
xticks(xdecay);
yticks([0.0143]);
yticklabels({'0.015'});
xlabel("Group");
ylabel("Rate of Decay");
ax = gca;
ax.FontSize = 25;

bar(xdecay(2),ydecay(2),'FaceColor',m1color(1,:),'EdgeColor',m1color(1,:));
xticklabels({'Control','M1','M1-Tapping','M1-Others'});
% bar(xdecay(2),ydecay(2),'FaceColor',s1color(1,:),'EdgeColor',s1color(1,:));
% xticklabels({'Control','S1','S1-Tapping','S1-Others'});


% err = [ydecay * 0.1;ydecay * 0.1];
% errorbar(xdecay,ydecay, err(1,:), err(2,:),'Color');

%% power analysis
nn = 1:100;
%2side t test, [mean 100, sd 5], alternative 102, power[], evaluate at sample
%size nn
pwrout = sampsizepwr('t',[0.0783 0.0572], 0.1825,[],nn);
mean5Days = 0.785;
sd5Days = (0.84-0.73) * sqrt(7) /3.92;
sd2 = (mean5Days-0.73) * sqrt(7) / 1.96;
avgicc = (0.11+0.53)/2;
pwrout = sampsizepwr('t',[mean5Days sd5Days/0.53], 1.6*sd5Days+mean5Days,0.8);

figure;
plot(nn,pwrout,'b-')
title('Power versus Sample Size')
xlabel('Sample Size')
ylabel('Power')

%plot effect size vs sample at power 80%
pws = nan(1,10);
for i = 1:10
    pws(i) = sampsizepwr('t',[mean5Days sd], (1.5+0.05*(i-1))*sd5Days+mean5Days,0.8);
end
plot(pws);
