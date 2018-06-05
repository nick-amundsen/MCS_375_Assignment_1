%%%%   Assignment 1 MC/S 375   %%%%
%%%%   Nick Amundsen   %%%%
%%%%   W01323151   %%%%

 %%%%%%%%%% PROBLEM 1: 
  % Points to evaluate at:
  s = -3: 0.1: 3;
  % Evaluating using horners method and our coefficient program:
  % n = 0, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(0), s);
  plot(s,p); hold on,
  title('Problem 1 graph 1 n = 0'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off;
  figure (2);
  plot(s,dp); hold on,
  title('Problem 1 graph 2 n = 0'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
  
  % n = 1, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(1), s);
  figure (3);
  plot(s,p); hold on,
  title('Problem 1 graph 3 n = 1'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off; 
  figure (4);
  plot(s,dp); hold on,
  title('Problem 1 graph 4 n = 1'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
  
  % n = 2, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(2), s);
  figure (5);
  plot(s,p); hold on,
  title('Problem 1 graph 5 n = 2'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off;
  figure (6);
  plot(s,dp); hold on,
  title('Problem 1 graph 6 n = 2'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
  
  % n = 3, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(3), s);
  figure (7);
  plot(s,p); hold on,
  title('Problem 1 graph 7 n = 3'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off;
  figure (8);
  plot(s,dp); hold on,
  title('Problem 1 graph 8 n = 3'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
  
  % n = 4, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(4), s);
  figure (9);
  plot(s,p); hold on,
  title('Problem 1 graph 9 n = 4'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off;
  figure (10);
  plot(s,dp); hold on,
  title('Problem 1 graph 10 n = 4'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
  
  % n = 5, p(s) and p''(s) graphs
  [p, dp] = horner (problem_1_coefficients(5), s);
  figure (11);
  plot(s,p); hold on,
  title('Problem 1 graph 11 n = 5'); xlabel('x values in 0.1 increments'); ylabel('Value of p(s)');
  hold off;
  figure (12);
  plot(s,dp); hold on,
  title('Problem 1 graph 12 n = 5'); xlabel('x values in 0.1 increments'); ylabel('Value of p''(s)');
  hold off;
 
 %%%%%%%%%% PROBLEM 2:
  % Drawing graphs, using function that takes a k and an n 
  % and returns two vectors with the errors in them relative to n
  
  % Vector of n values to plot with
  N = 1:1000;
  
  % Graph code
  [a1,r1] = problem_2_errors(1, 1000);
  [a2,r2] = problem_2_errors(2, 1000);
  [a3,r3] = problem_2_errors(3, 1000);
  % Graphs for k=1
  figure(13)
  plot(N,a1); hold on, % Absolute error
  title('Problem 2 absolute error, k = 1'); xlabel('value of n'); ylabel('absolute error'); hold off;
  figure(14);
  plot(N,r1); hold on, % Relative error
  title('Problem 2 relative error, k = 1'); xlabel('value of n'); ylabel('relative error, in percentage'); hold off;
  % Graphs for k=2
  figure(15)
  plot(N,a2); hold on, % Absolute error
  title('Problem 2 absolute error, k = 2'); xlabel('value of n'); ylabel('absolute error'); hold off;
  figure(16);
  plot(N,r2); hold on, % Relative error
  title('Problem 2 relative error, k = 2'); xlabel('value of n'); ylabel('relative error, in percentage'); hold off;
  % Graphs for k=3
  figure(17)
  plot(N,a3); hold on, % Absolute error
  title('Problem 2 absolute error, k = 3'); xlabel('value of n'); ylabel('absolute error'); hold off;
  figure(18);
  plot(N,r3); hold on, % Relative error
  title('Problem 2 relative error, k = 3'); xlabel('value of n'); ylabel('relative error, in percentage'); hold off;
    
  
  %%%%%%%%% PROBLEM 3:
  % Comparing run times for different ways of calculating matrix
  % multiplication. 1:k, k = 1,2,4,6,8
  
  % Matrix and vector we will be using,
  A = round(10*rand(1000)-5);
  v = rand(1,1000); % Vector with random values
  v = v';
  
  % First method, 
  % using matrix multiplication
  tic
  w12 = problem_3_method1(A,v,2); % k = 2
  disp('Method 1 for k=2');
  toc
  tic
  w14 = problem_3_method1(A,v,4); % k = 4
  disp('Method 1 for k=4');
  toc
  tic
  w16 = problem_3_method1(A,v,6); % k = 6
  disp('Method 1 for k=6');
  toc
  tic
  w18 = problem_3_method1(A,v,8); % k = 8
  disp('Method 1 for k=8');
  toc
  
  % Second method,
  % distributing the vector v
  tic
  w22 = problem_3_method2(A,v,2); % k = 2
  disp('Method 2 for k=2');
  toc
  tic
  w24 = problem_3_method2(A,v,4); % k = 4
  disp('Method 2 for k=4');
  toc
  tic
  w26 = problem_3_method2(A,v,6); % k = 6
  disp('Method 2 for k=6');
  toc
  tic
  w28 = problem_3_method2(A,v,8); % k = 8
  disp('Method 2 for k=8');
  toc
  
  % Third method,
  % using a proccess similar to Horner's method
  tic
  w32 = problem_3_method3(A,v,2); % k = 2
  disp('Method 3 for k=2');
  toc
  tic
  w34 = problem_3_method3(A,v,4); % k = 4
  disp('Method 3 for k=4');
  toc
  tic
  w36 = problem_3_method3(A,v,6); % k = 6
  disp('Method 3 for k=6');
  toc
  tic
  w38 = problem_3_method3(A,v,8); % k = 8
  disp('Method 3 for k=8');
  toc
  
  
  