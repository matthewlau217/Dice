Dice Die;
int counter = 0;
int multiplier = 1;
int savedTime;
int totalTime = 60000;
int minutes = 0;
int passedTime;
int average = ((16*9*multiplier*multiplier)/144)*30000;
int sd = ((16*9*multiplier*multiplier)/144)*17080;

void setup()
{
  size (1980,1080);
  noLoop();
  savedTime = millis();
}
void draw()
{
  for (int j = 0; j <= 1600*multiplier; j += 12) {
    for (int i = 0; i <= 900*multiplier; i += 12) {
      Die = new Dice(j,i);
      Die.roll();
      Die.show();
      passedTime = millis() - savedTime;
      if (passedTime > totalTime - 1) {
        savedTime = millis();
        minutes++;
      }
      //System.out.println("Time: " + minutes + ":" + passedTime/1000 + " Dots: " +  counter + " Dot Average: " + average + " Satandard Deviation: " + sd);
    }
  }
  textSize(300);
  fill(0,0,0);
  text("Total Dots: ",0,350);
  text(counter,450,650);
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
