
float f(float x, float m, float b){
  
  return m * x - b;
}


class Point{
  float x;
  float y;
  float bias;
  int label;
  
  Point(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  Point(){
    x = random(-1,1);
    y = random(-1,1);
    bias = 1;
    
    float lineY = f(x,m,b);
    if(y > lineY)
      label = 1;
    else
      label = -1;
  }
  
  float PixelX(){
    return map(x,-1,1,0,width);
  }
  
  float PixelY(){
    return map(y,-1,1,height,0);
  }
  
  void show(){
    stroke(0);
    if(label ==1)
      fill(255);
    else
      fill(0);
    
    ellipse(PixelX(),PixelY(),16,16);
  }

}
