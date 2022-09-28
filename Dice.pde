Dice Die;
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
      //Die.roll();
      Die.show();
    }
  }
}
void mousePressed()
{
  redraw();
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
    num = (int)(Math.random()*6);
    System.out.println (num);
  }
  void show()
  {
   fill(255,255,255);
   rect(myX,myY,12,12);
  }
}
