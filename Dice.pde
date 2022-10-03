Dice Die;
int counter = 0;
void setup()
{
  size (1980,1080);
  noLoop();
}
void draw()
{
  for (int j = 0; j <= 1920; j += 12) {
    for (int i = 0; i <= 1080; i += 12) {
      Die = new Dice(j,i);
      Die.roll();
      Die.show();
    }
  }
  textSize(300);
  fill(0,0,0);
  text("Total Dots: ",200,350);
  text(counter,450,650);
  System.out.println(counter);
}
void mousePressed()
{
  redraw();
  counter = 0;
}
class Dice 
{
  int myX, myY, num;
  Dice(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
    counter += num;
  }
  void show()
  {
    fill(255,255,255);
    rect(myX,myY,12,12);
    fill(0,0,0);
    if (num == 1){
      ellipse(myX+6,myY+6,2,2);
    } else if (num == 2){
      ellipse(myX+4,myY+8,2,2);
      ellipse(myX+8,myY+4,2,2);
    } else if (num == 3){
      ellipse(myX+3,myY+9,2,2);
      ellipse(myX+6,myY+6,2,2);
      ellipse(myX+9,myY+3,2,2);
    } else if (num == 4){
      ellipse(myX+3,myY+3,2,2);
      ellipse(myX+3,myY+9,2,2);
      ellipse(myX+9,myY+3,2,2);
      ellipse(myX+9,myY+9,2,2);
    } else if (num == 5){
      ellipse(myX+3,myY+3,2,2);
      ellipse(myX+3,myY+9,2,2);
      ellipse(myX+6,myY+6,2,2);
      ellipse(myX+9,myY+3,2,2);
      ellipse(myX+9,myY+9,2,2);
    } else if (num == 6){
      ellipse(myX+3,myY+2,2,2);
      ellipse(myX+3,myY+10,2,2);
      ellipse(myX+3,myY+6,2,2);
      ellipse(myX+9,myY+6,2,2);
      ellipse(myX+9,myY+2,2,2);
      ellipse(myX+9,myY+10,2,2);
    }
  }
}
