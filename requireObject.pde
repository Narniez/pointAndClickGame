//Extends the game object calss 
//Inherits all funcunalitis from textObject and GameObject(mouse hovering check)
//Overrides the mouseClicked() to handle the cgheking and removal of the collectable required

class RequireObject extends TextObject {
  private Collectable collectable;
  private GameObject replaceWith;
  
  public RequireObject(String identifier, int x, int y, int owidth, int oheight, 
                       String gameObjectImageFile, String text, 
                       Collectable collectable, GameObject replaceWith) {
    super(identifier, x, y, owidth, oheight, gameObjectImageFile, text);
    this.collectable = collectable;
    this.replaceWith = replaceWith;
  }
  
  @Override
  public void mouseClicked() {
    if(mouseIsHovering && inventoryManager.containsCollectable(collectable)) {
      inventoryManager.removeCollectable(collectable);
      sceneManager.getCurrentScene().removeGameObject(this);
      sceneManager.getCurrentScene().addGameObject(replaceWith);
    } else {
      super.mouseClicked();
    }
  } 
}
