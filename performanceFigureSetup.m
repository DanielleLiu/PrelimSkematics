function f=performanceFigureSetup()
    f=figure;
    hold on;
    ylim([0.57,0.97]);
    yticks(0.968);
    yticklabels({'100'});
    xlim([0.5,20.5]);
    xticks([1,2,3,4,5,6,7,10,13,20]);
    xticklabels({'1','2','3','4','5','6','7','10','13','20'});
    xlabel("Days");
    ylabel("Standardized Completion Time (%)");
    ax = gca;
    ax.FontSize = 17;
end