function [means,cells,sizes] = get_kmean_best(data,splits,count)
%input argument of a cell array containing split data from kmeans_split,
%generates a matrix containing the mean values of the clustered data
cells = kmean_split(data,splits);
means = get_kmean(cells)
scpd = get_scpd(cells,means);
sizes = get_cluster_sizes(cells);
for c = 2:count
    temp_cells = kmean_split(data,splits);
    temp_means = get_kmean(temp_cells)
    temp_scpd = get_scpd(temp_cells,temp_means);
    sizes = [sizes;get_cluster_sizes(cells)];
    if temp_scpd < scpd
        cells = temp_cells;
        means = temp_means;
        scpd = temp_scpd;
    end
end
end
