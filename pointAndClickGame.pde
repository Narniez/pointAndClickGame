int screenW = 1920;
int screenH = 1080;
PImage imgSketchMainScene1;

Movement movement1 = new Movement();

final SceneManager sceneManager = new SceneManager();
final InventoryManager inventoryManager = new InventoryManager();

void setup()
{
  //framerate affects move speed
  frameRate(60);
  fullScreen();
  
   // adds a collectable objects giving it a name and an image 
   Collectable joint = new Collectable("joint","joint.png");
   //adds a move to Scene object giving it a name a place an image and to which scene it goes 
   MoveToSceneObject object1 = new MoveToSceneObject("goToScene02_scene01",1600,800,50,50,"arrowRight.png","scene02");
   
  // adds a new scene giving it a name and a background image
  Scene scene01 = new Scene("scene01","sketch_mainscene1.png");
  
  RequireObject loupe01 = new RequireObject("requiresJoint_scene01", 1600,800,50,50,"arrowRight.png","You need to be high before entering the tent",joint,object1);
  loupe01.setHoverImage("arrowRight.png");
  scene01.addGameObject(loupe01);
  CollectableObject objectJoint = new CollectableObject("joint.png", 800,800,120,100,joint);
  scene01.addGameObject(objectJoint);
  
  Scene scene02 = new Scene("scene02","tent_scene.png");
  MoveToSceneObject object2 = new MoveToSceneObject("goBack_scene1",800,800,50,50,"arrowDown.png",true);
  scene02.addGameObject(object2);
  
  sceneManager.addScene(scene01);
  sceneManager.addScene(scene02);
  
}

void draw()
{
  background(0);
  sceneManager.getCurrentScene().draw(screenW,screenH);
  sceneManager.getCurrentScene().updateScene();
  inventoryManager.clearMarkedForDeathCollectables();
  movement1.getX();
  movement1.moveMainPerson();
  movement1.drawMainPerson ();

}

void mouseMoved() {
  sceneManager.getCurrentScene().mouseMoved();
}

void mouseClicked() {
  sceneManager.getCurrentScene().mouseClicked();
}
