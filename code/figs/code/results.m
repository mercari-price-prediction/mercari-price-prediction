

metrics = 1:2;
models = {'A = Baseline', 'B = A + Tf-Idf-SVD', 'C = B + NMF-Frobenius', 'C + LDA'};
r2 = [0.62, 0.64,0.56,0.67];
corr = [0.6956,0.7214,0.7075,0.7398];

metric_vals = [r2;corr];
h = figure;
% Plot bar plot
hb = bar(1:length(metrics),metric_vals);    
% Set 1 to 30 xtick labels
xticks(1:length(metrics));  
xticklabels({'R^2 Statistic', 'Correlation'});         
set(gca,'ygrid','on')

xt = get(gca, 'XTick');
set(gca, 'FontSize', 16,'FontWeight','bold')
% Set lengend for the categories
lh =  legend(models);
set(lh,'Location','bestoutside','Orientation','vertical'); 
set(hb,'BarWidth',1);

%hold on;    
% Plot the Error Bars for each coefficient
title(sprintf('R^2 Statistic and Correlation Coefficient : Ensemble model (RR + LGBM)'));
%ylabel('Regression Coefficient \beta','FontWeight','bold');
%xlabel('Shape PC dimension','FontWeight','bold');
%saveas(h,strcat('figures/regCoeffshape.jpg'))
%hold off;    
