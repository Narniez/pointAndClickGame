//main person variables
float mainPersonX;
float mainPersonY  = 800;
float mainPersonSize = 100;
float targetX;
float speedMainPerson = 0.015;

class Movement {
  
  
 void getX ()
{
  if (mousePressed && (mouseButton == LEFT)){
  targetX = mouseX;
  }
}

public void moveMainPerson()
{

  mainPersonX = lerp (mainPersonX, targetX, speedMainPerson);
}

public void drawMainPerson()
{
  fill(255, 0, 0);
  rect(mainPersonX - (mainPersonSize/2), mainPersonY, mainPersonSize, mainPersonSize);
}

}
