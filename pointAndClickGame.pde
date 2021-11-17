int screenW = 1920;
int screenH = 1080;
PImage imgSketchMainScene1;

Movement movement1 = new Movement();

final SceneManager sceneManager = new SceneManager();

void setup()
{
  //framerate affects move speed
  frameRate(60);
  size(1920, 1080);
  Scene scene01 = new Scene("scene01","sketch_mainscene1.png");  
  sceneManager.addScene(scene01);
}

void draw()
{
  background(0);
  //main person movement preset
  sceneManager.getCurrentScene().draw(screenW,screenH);
  movement1.getX();
  movement1.moveMainPerson();
  movement1.drawMainPerson ();

}
