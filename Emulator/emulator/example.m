%% Emulator for the plume

x =[7.5000 6.0714
    1.0714 3.9286
    9.6429 8.2143
    4.6429 4.6429
    2.5000 14.6429
   -3.2143 2.5000
    3.2143 0.3571
   -4.6429 6.7857
   -3.9286 12.5000
    6.0714 1.7857
    8.2143 11.0714
    6.7857 13.9286
   -0.3571 1.0714
   -1.7857 5.3571
    0.3571 10.3571
    8.9286 3.2143
   -2.5000 9.6429
    5.3571 8.9286
    3.9286 11.7857
   -1.0714 13.2143
    1.7857 7.5000];


 y = [ 35.80951 34
      14.86287 34
      31.41880 767
      19.87899 45
      141.88566 34
      99.43335 76  
      3.88973 37
      97.47380 76
      6.27060 34 
      19.85914 98
      95.50587 47
      181.74214 78
      49.39445 24
      23.13762 57
      43.09524 30
      2.82392 75
      3.61474 52
      75.79100 36
      104.11175 92
      43.33586 56
      23.39797 44];
  
  
  xpred = [-4.5000  0.5000
           -4.5000 14.5001
            2.5000  7.5000
            9.5000 0.5000
            9.5000 14.5001];
        
        
F = [ones(21,1) x(:,1) x(:,2) diag(x(:,1)*(x(:,2))')];
        
Fpred = [ones(5,1) xpred(:,1) xpred(:,2) diag(xpred(:,1)*(xpred(:,2))')];

branin_output = mperk('X',x, ...
                'Y',y,...
                'CorrelationEstimationMethod','REML',...
                'CorrelationFamily','Cubic',...
                'Xpred',xpred,...
                'RegressionModel',F,...
                'PredRegressionModel', Fpred);
   
 
 

 
 


 


 


 
 
 


