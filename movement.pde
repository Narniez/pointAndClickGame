//main person variables
float mainPersonX = 300;
float mainPersonY  = 800;
float mainPersonSize = 100;
float targetX;
float speedMainPerson = 0.015;

class Movement {
  
  
/* void getX ()
{
 if (mousePressed && (mouseButton == LEFT)){
//  targetX = mouseX;
  }
}

public void moveMainPerson()
{

 mainPersonX = lerp (mainPersonX, targetX, speedMainPerson);
}*/

//Draws main person in screen (300, 800)
void drawMainPerson()
{
  fill(255, 0, 0);
  //rect(mainPersonX - (mainPersonSize/2), mainPersonY, mainPersonSize, mainPersonSize);
  rect(mainPersonX, mainPersonY, mainPersonSize, mainPersonSize);
}

}
