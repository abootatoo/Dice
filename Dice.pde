int total = 0;
int totalSum = 0;
void setup()
{
  size(820,800);
  noLoop();
  background(#D6292C);
}
void draw()
{
  background(#3B1CC9);
  //rows and columns
  for(int x = 0; x < 801; x = x + 55)
  {
    for(int y = 0; y < 659; y = y + 55)
    {
      //creates new die from class Die
      Die uno = new Die(x,y);
      uno.show();
      uno.roll();
      uno.totalandtotalSumBox();
    }
  }
}
void mousePressed()
{
  redraw(); 
  //reset total
  total = 0;
}
class Die //draws one die
{
  int dieX,dieY,dieRoll;
  Die(int x, int y) //constructor
  {
    dieX = x;
    dieY = y;
  }
  void show()
  {
    //die background
    fill(255);
    rect(dieX, dieY,49,49,10);
  }
  void roll()
  {
    //die dots
    //roll number
    dieRoll = (int)(Math.random()*6)+1;
    stroke(0);
    fill(0);
    //drawing the dots depending on dieRoll number
    if(dieRoll == 1)
    {
      ellipse(dieX+25,dieY+25,10,10);
      total = total + 1;
      totalSum = totalSum + 1;
    }
    else if(dieRoll == 2)
    {
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      total = total + 2;
      totalSum = totalSum + 2;
    }
    else if(dieRoll == 3)
    {
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      total = total + 3;
      totalSum = totalSum + 3;
    }
    else if(dieRoll == 4)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      total = total + 4;
      totalSum = totalSum + 4;  
    }
    else if(dieRoll == 5)
    {
      ellipse(dieX+15, dieY+35, 10, 10);
      ellipse(dieX+15, dieY+15, 10, 10);
      ellipse(dieX+35, dieY+35, 10, 10);
      ellipse(dieX+35, dieY+15, 10, 10);
      ellipse(dieX+25, dieY+25, 10, 10);
      total = total + 5;
      totalSum = totalSum + 5;
    }
    else
    {
      ellipse(dieX+15, dieY+13, 10, 10);
      ellipse(dieX+15, dieY+25, 10, 10);
      ellipse(dieX+15, dieY+37, 10, 10);
      ellipse(dieX+35, dieY+13, 10, 10);
      ellipse(dieX+35, dieY+25, 10, 10);
      ellipse(dieX+35, dieY+37, 10, 10);
      total = total + 6;
      totalSum = totalSum + 6; 
    }
  }
  void totalandtotalSumBox()
  {
    //total box and num
    stroke(0);
    fill(255);
    textSize(35);
    rect(10,660,210,70);
    fill(0);
    text("Total: " + total,20,710);
    
    //totalSum box and num
    stroke(0);
    fill(255);
    textSize(35);
    rect(230,660,310,70);
    fill(0);
    text("All Rolls: " + totalSum,240,710);
    
    //congrats
    stroke(0);
    fill(255);
    textSize(35);
    rect(550,660,260,70);
    fill(0);
    text("Just roll 'em" , 580, 710);
  }
}
