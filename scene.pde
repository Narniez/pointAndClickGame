class Scene {
  
  private String sceneName;
  private PImage backgroundImage;
  private ArrayList <GameObject> gameObjects;


  public Scene(String sceneName, String backgroundImageFile) {
    this.sceneName = sceneName;
    this.backgroundImage = loadImage(backgroundImageFile);
    gameObjects = new ArrayList<GameObject>();
  
  }
  
  public void addGameObject(GameObject object){  
    gameObjects.add(object);
  }
  
  public void draw(int screenW, int screenH){
    image(backgroundImage,0,0,screenW,screenH);
    for(GameObject object : gameObjects){ 
      object.draw();
    } 
  }
  
  public void moseMoved(){
    for(GameObject object : gameObjects){
      object.mouseMoved();
    }
  }
  
  public void mouseClicked(){
    for(GameObject object : gameObjects) {
      object.mouseClicked();
    }
  }
  
   public String getSceneName() {
    return this.sceneName;
  }

}
