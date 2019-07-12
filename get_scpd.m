function scpd = get_scpd(data,means)
%calculates the squared center-point distances for all clusters
scpd = [];
for c1 = 1:size(means,1)
    scpd = [scpd;sum((data{c1}-means(c1,:)).^2)];
end
scpd = sum(sum(scpd));
end
