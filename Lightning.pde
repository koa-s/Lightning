int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;

void setup()
{
  size(500,500);
  strokeWeight(4);
  background(17, 11, 102);
}

void draw()
{
 
 
  stroke(255, 255, 56);
 
  //main lightning bolt code
  if(endX <= 500) {
   
    endX = startX + (int)(Math.random()*40 - 20);
    endY = startY + (int)(Math.random()*20);
   
    line(startX,startY,endX,endY);
   
    startX = endX;
    startY = endY;
   
  }
 
  //fire explosions
 
  if(endY >= 500 && endY <= 525)
  {
    noStroke();
    fill(245, 62, 34);
    triangle(endX-25,450,endX,400,endX+25,450);
    fill(247, 191, 22);
    triangle(endX-10,450,endX,420,endX+10,450);
  }
 
  noStroke();
  fill(17, 11, 102,15);
  rect(0,0,500,500);
 
  fill(100,100,100);
 
  //main cloud
  ellipse(250,50,125,125);
  ellipse(200,50,90,90);
  ellipse(300,50,80,80);
 
  //left cloud
  ellipse(100,175,75,75);
  ellipse(70,175,50,50);
  ellipse(130,175,50,50);
 
  //right cloud
  ellipse(380,150,75,75);
  ellipse(350,150,50,50);
  ellipse(410,150,50,50);

  //the ground
  fill(122, 209, 71);
  rect(0,450,500,50);
  
  //trees
  fill(99, 66, 13);
  //left
  rect(125,400,20,50);
  //right
  rect(375,380,30,70);
  //right-er
  rect(460,360,40,90);
  
  fill(21, 71, 8);
  //left
  ellipse(135,390,60,60);
  //right
  ellipse(390,380,65,65);
  //right-er
  ellipse(480,360,90,90);
    
  //bushes
  ellipse(200,435,40,30);
  ellipse(470,435,40,30);
  ellipse(400,435,40,30);

}

void mousePressed()
{
  startX = 250;
  startY = 0;
  endX = 250;
  endY = 0;
}
