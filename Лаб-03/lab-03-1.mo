model Project
  parameter  Real a(start=0.354);
  parameter  Real b(start=0.765);
  parameter  Real c(start=0.679);
  parameter  Real h(start=0.845); 
  Real y1(start=87700);
  Real y2(start=91400);
  
  equation
    der(y1)= -a*y1-b*y2 + abs(sin(time+10));
    der(y2)= -c*y1-h*y2 + abs(cos(time+15));

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;



model Project
  parameter  Real a(start=0.505);
  parameter  Real b(start=0.77);
  parameter  Real c(start=0.6);
  parameter  Real h(start=0.404); 
  Real y1(start=87700);
  Real y2(start=91400);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(2*time)+2;
    der(y2)= -c*y1*y2-h*y2 + cos(5*time)+2;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;