model Model1
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 350) annotation(Placement(visible = true, transformation(origin = {25, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
  EducationExamples.ElectricalEngineering.DCMotor.Components.DCMotor motor(EMFk = 240, R = 0.089, J = 2.67619, L = 0.017, V.start = 24) "Physical system under control from the added signals" annotation(Placement(visible = true, transformation(origin = {-40, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step controlSignal(startTime = 0, height = 24) annotation(Placement(visible = true, transformation(origin = {-92.612, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear1(ratio = 1 / 8) annotation(Placement(visible = true, transformation(origin = {-5, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(controlSignal.y, motor.V) annotation(Line(visible = true, origin = {-66.806, 10}, points = {{-14.806, 0}, {14.806, 0}}, color = {1, 37, 163}));
  connect(motor.flange_a1, idealGear1.flange_a) annotation(Line(visible = true, origin = {-22.5, 10}, points = {{-7.5, 0}, {7.5, 0}}, color = {64, 64, 64}));
  connect(idealGear1.flange_b, inertia1.flange_b) annotation(Line(visible = true, origin = {10, 10}, points = {{-5, 0}, {5, 0}}, color = {64, 64, 64}));
  annotation(experiment(StopTime = 3, NumberOfIntervals = -1, __Wolfram_SynchronizeWithRealTime = false), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Model1;
