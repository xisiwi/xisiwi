void setup(){
 size(1000,1000);
 smooth();
 background(255);
 stroke(100);
}
void draw(){
   float heartSize = random(10, 100);
  float heartX = random(width);
  float heartBottomY = random(height+heartSize);

  float r = random(255);

  fill(r, 0, 0);
  stroke(r, 0, 0);

 
  line(heartX, heartBottomY, heartX, heartBottomY-heartSize*.75);

  
  stroke(255);

 
  beginShape();
  curveVertex(heartX, heartBottomY+heartSize); 
  curveVertex(heartX, heartBottomY);
  curveVertex(heartX - heartSize/2, heartBottomY-heartSize/1.5); 
  curveVertex(heartX - heartSize/3, heartBottomY-heartSize); 
  curveVertex(heartX, heartBottomY-heartSize*.75);
  curveVertex(heartX, heartBottomY); 
  endShape(); //左心

 
  beginShape();
  curveVertex(heartX, heartBottomY);
  curveVertex(heartX, heartBottomY-heartSize*.75);
  curveVertex(heartX + heartSize/3, heartBottomY-heartSize);
  curveVertex(heartX + heartSize/2, heartBottomY-heartSize/1.5);
  curveVertex(heartX, heartBottomY);
  curveVertex(heartX, heartBottomY + heartSize);
  endShape(); //右心
  
  
  
  int w=mouseX/3;
    int h=mouseY/3;
   for(int i=0;i<width+100;i+=100){
  for(int j=0;j<height+100;j+=100){
  fill(r, 0, 0);
    ellipse(i,j,w,h);
  }
 }
}
