function plot_kmeans(data,means)
%plots the data according to the assignment
figure;
for c = 1:size(data,2)
    scatter(data{c}(:,1),data{c}(:,2),'filled');
    hold on
end
for c = 1:size(means,1)
    plot(means(c,1),means(c,2),'kx','MarkerSize',15,'LineWidth',3);
    hold on
end

