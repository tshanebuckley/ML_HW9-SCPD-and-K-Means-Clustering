Y = importdata("clustering_data.txt");
k_clustered_3 = kmean_split(Y,3)
means_3 = get_kmean(k_clustered_3)
plot_kmeans(k_clustered_3,means_3);

k_clustered_4_1 = kmean_split(Y,4)
means_4_1 = get_kmean(k_clustered_4_1)
plot_kmeans(k_clustered_4_1,means_4_1);

k_clustered_4_2 = kmean_split(Y,4)
means_4_2 = get_kmean(k_clustered_4_2)
plot_kmeans(k_clustered_4_2,means_4_2);

scpd_3 = get_scpd(k_clustered_3,means_3)
scpd_4_1 = get_scpd(k_clustered_4_1,means_4_1)
scpd_4_2 = get_scpd(k_clustered_4_2,means_4_2)

[best_mean_4,best_cluster_4,sizes_4] = get_kmean_best(Y,4,30)
plot_kmeans(best_cluster_4,best_mean_4);

C = cluster_split(Y,4)
mean_C = get_kmean(C)
plot_kmeans(C,mean_C);
