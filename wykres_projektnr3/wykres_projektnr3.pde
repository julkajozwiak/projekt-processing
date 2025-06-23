import grafica.*;

int nPoints = 100;

float t = 0;

GPointsArray points = new GPointsArray(nPoints);
GPlot plot;

void setup(){
  plot = new GPlot(this);
  plot.setPos(100, 100);
  plot.setDim(400, 300);
  plot.setTitleText("sinus");
  plot.getXAxis().setAxisLabelText("x");
   plot.getYAxis().setAxisLabelText("y");
   plot.setPoints(points);
   plot.setLineColor(color(255, 0, 0));
   plot.setPointColor(color(255, 0, 0));
   plot.setBoxBgColor(color(255));
   
   size(700, 600);
   background(255);
  
}

void draw(){
  points.add(t, sin(t));
  
  plot.setPoints(points);
  plot.defaultDraw();
  
  t = t+0.1;
  
  if(t > 20){
    plot.setXLim(t-20, t);
  }
  
}
