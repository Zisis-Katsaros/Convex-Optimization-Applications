% Main

% The given function f
f = @(x) (1/3)*x(1)^2 + 3*x(2)^2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Task 1:
% I)
% graph_st_des_const_gamma(f, -1, 1, 1e-3, 0.1);
% graph_st_des_const_gamma(f, 1, -1, 1e-3, 0.1);
% graph_st_des_const_gamma(f, 5, 8, 1e-3, 0.1);

% II)
% graph_st_des_const_gamma(f, -1, 1, 1e-3, 0.3);
% graph_st_des_const_gamma(f, 1, -1, 1e-3, 0.3);
% graph_st_des_const_gamma(f, 5, 8, 1e-3, 0.3);

% III)
% graph_st_des_const_gamma(f, -1, 1, 1e-3, 3);
% graph_st_des_const_gamma(f, 1, -1, 1e-3, 3);
% graph_st_des_const_gamma(f, 5, 8, 1e-3, 3);

% IV)
% graph_st_des_const_gamma(f, -1, 1, 1e-3, 5);
% graph_st_des_const_gamma(f, 1, -1, 1e-3, 5);
% graph_st_des_const_gamma(f, 5, 8, 1e-3, 5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Task 2:

% graph_st_des_proj_const_gamma(f, 5, -5, 1e-2, 0.3, 5, -10, 5, -8, 12);

% graph_st_des_proj_const_gamma(f, 5, -5, 1e-2, 0.1, 5, -10, 5, -8, 12);

% graph_st_des_proj_const_gamma(f, 5, -5, 1e-2, 0.1, 3, -10, 5, -8, 12);

% graph_st_des_proj_const_gamma(f, 5, -5, 1e-2, 0.1, 6, -10, 5, -8, 12);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Task 3:

% graph_st_des_proj_const_gamma(f, -5, 10, 1e-2, 0.1, 15, -10, 5, -8, 12);

% graph_st_des_proj_const_gamma(f, -5, 10, 1e-2, 0.1, 2, -10, 5, -8, 12);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Task 4:

graph_st_des_proj_const_gamma(f, 8, -10, 1e-2, 0.2, 0.1, -10, 5, -8, 12);