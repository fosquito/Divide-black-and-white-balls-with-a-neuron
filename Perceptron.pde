int sign(float n){
  if(n >= 0)
    return 1;
  else
    return -1;
}


class Perceptron{
  float[] weights;
  
  //Constructor
  Perceptron(int n){
    weights = new float[n];
    //Inititalize the weight randomly 
    for(int i=0;i<weights.length;i++)
      weights[i] = random(-1,1);
  }
  
  
  
  
  int guess(float[] inputs){
    float sum=0;
    for(int i=0;i<weights.length;i++)
      sum += inputs[i]*weights[i];
      
    return sign(sum);
  }
  
  
  
  
  void train(float[] inputs, int target, float n){
    int guess = guess(inputs);
    int error = target - guess;
   
   for(int i=0;i<weights.length;i++)
     weights[i] += error * inputs[i] * n;
  }
  
  
  
  
  float guessY(float x){
    return - (weights[2] / weights[1])  - (weights[0] / weights[1]) * x;
    
  }
  
}
