
test_common;

% Propagate
time = 1;
for i = 1:30
    tic; [LS,iter] = propagate(LS,time,'speed_normal',1); toc
    tic; LS = rebuild_narrowband(LS); toc
    figure(100);
    clf;
    plot(LS, 'contour', 'narrowband 5');
    drawnow;
end

rmpath('..');