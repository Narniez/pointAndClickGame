// Makes objects used for moving between scenes 

class MoveToSceneObject extends GameObject {
  
  private String nextSceneIdentifier;
  private boolean moveBack;
  
  public MoveToSceneObject(String identifier, int x, int y, int owidth, int oheight, boolean moveBack) {
    this(identifier, x, y, owidth, oheight, "", moveBack);
  }
  
  public MoveToSceneObject(String identifier, int x, int y, int owidth, int oheight, String gameObjectImageFile, boolean moveBack) {
    //calls the constructor from GameObject 
    super(identifier, x, y, owidth, oheight, gameObjectImageFile);
    this.moveBack = moveBack;
  }
  
  public MoveToSceneObject(String identifier, int x, int y, int owidth, int oheight, String nextSceneIdentifier) {
    this(identifier, x, y, owidth, oheight, "", nextSceneIdentifier);
  }
  
  public MoveToSceneObject(String identifier, int x, int y, int owidth, int oheight, String gameObjectImageFile, String nextSceneIdentifier) {
    super(identifier, x, y, owidth, oheight, gameObjectImageFile);
    this.nextSceneIdentifier = nextSceneIdentifier;
    this.moveBack = false;
  }
  
  
  // Checks if we are on top of a game Object to then proceed 
  //If it is a move back object then it call sceneManager to return
  //If not it moves to the next scene 
  
  @Override
  public void mouseClicked() {
    if(mouseIsHovering) {
      if(moveBack) {
        sceneManager.goToPreviousScene();
      } else {
        try {
          sceneManager.goToScene(nextSceneIdentifier);
        } catch(Exception e) { 
          println(e.getMessage());
        }
      }
    }
  }
}
