model Project
  parameter  Real a=0.13;
  parameter  Real b=0.041;
  parameter  Real c=0.31;
  parameter  Real d=0.042;
  
  Real x(start=7);
  Real y(start=10);
  
  equation
    der(x)= -a*x + b*x*y;
    der(y)= c*y - d*x*y;

  
  annotation(experiment(StartTime=0, StopTime=300, Tplerance=1e-06,Interval=0.05));

end Project;
