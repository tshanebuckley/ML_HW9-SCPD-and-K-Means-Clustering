function means = get_kmean(cell_arr)
%input argument of a cell array containing split data from kmeans_split,
%generates a matrix containing the mean values of the clustered data
means = [];
for c = 1:size(cell_arr,2)
    means = [means;mean(cell_arr{c})];
end
end