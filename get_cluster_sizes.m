function sizes = get_cluster_sizes(cells)
%returns cluster sizes of a cell array generated by kmean_split
sizes = [];
for c = 1:size(cells,2)
    sizes = [sizes,size(cells{c},1)];
end

