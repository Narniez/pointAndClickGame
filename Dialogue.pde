
class Dialogue
{
  int textSize = 35;
  int textX = 250;
  int testY = 550;
  int textColor = 255;
  int perMouseClick = 0;
  boolean blackScreenHere = true;

  void mouseClick()
  {
    //everythime when mouseclicked, the variable ++
    if (blackScreenHere)
    {
      perMouseClick++;
    }
  }

  // looks what number variable is at and displays that case
  void drawDialogue()
  {
    
    switch (perMouseClick) {
    case 1: 
      textSize(textSize);
      fill(textColor);
      text("Max: Yo guys look at this poster, the hippies are throwing a party tonight.", textX, testY );
      break;
    case 2: 
      textSize(textSize);
      fill(textColor);
      text("Daisy: No way are they still here. I thought they left.", textX, testY );
      break;
    case 3: 
      textSize(textSize);
      fill(textColor);
      text("John (You): Nah, they just moved into the (party setting, e.g woods or by the lake)", textX, testY );
      break;
    case 4: 
      textSize(textSize);
      fill(textColor);
      text("Max: We’ll need a disguise to blend in. Do you have anything?", textX, testY );
      break;
    case 5: 
      textSize(textSize);
      fill(textColor);
      text("John (You): Probably I’ll just need to look around my room.", textX, testY );
      break;
      case 6: 
     fill(0);
     blackScreenHere = false;
      break;
    }
  }
}
