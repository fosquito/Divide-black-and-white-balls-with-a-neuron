Perceptron brain;
Point[] points = new Point[100];
int trainingIndex = 0;
float n,m,b;
Point p1,p2,p3,p4;

void settings(){
   size(800,800);
   m = random(-1,1);
   b = random(-1,1);
   p1 = new Point(-1,f(-1,m,b));
   p2 = new Point(1,f(1,m,b));
}





void setup(){
  brain = new Perceptron(3);
  
  for(int i=0;i<points.length;i++){
    points[i] = new Point();
  }
  n = 0.1;
  
}





void draw(){
  background(255);
  stroke(0);
  //line(p1.PixelX(),p1.PixelY(),p2.PixelX(),p2.PixelY());
  
  p3 = new Point(-1, brain.guessY(-1));
  p4 =  new Point(1, brain.guessY(1));
  line(p3.PixelX(),p3.PixelY(),p4.PixelX(),p4.PixelY());
  
  
  for(Point p:points)
    p.show();
    
  for(Point p:points){
    float[] inputs = {p.x, p.y, p.bias};
    int target = p.label;
    
    int guess = brain.guess(inputs);

  
  }
  
  Point training = points[trainingIndex];
  float[] inputs = {training.x, training.y, training.bias};
  int target = training.label;
  brain.train(inputs,target, n); 
  n = n / 1.001;
  trainingIndex++;
  if(trainingIndex == points.length)
    trainingIndex = 0;
    
}

void mousePressed(){

  
}
