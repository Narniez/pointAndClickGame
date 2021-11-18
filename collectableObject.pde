// New type of Game objects that carry collectableObject
//It inherits from Game object and uses the draw method
//We have two constructors in case we want to have a collectable object
//to spawn another object when we collect it

class CollectableObject extends GameObject { 
  private Collectable collectable;
  private GameObject replaceWith;
  private boolean willReplaceByAnotherGameObject;
  
  public CollectableObject(String identifier, int x, int y, int owidth, 
                           int oheight, Collectable collectable) {
    this(identifier, x, y, owidth, oheight, collectable, null);
  }
  
  public CollectableObject(String identifier, int x, int y, int owidth, 
                           int oheight, Collectable collectable, GameObject replaceWith) {
    super(identifier, x, y, owidth, oheight, collectable.getGameObjectImageFile());
    this.collectable = collectable;
    if(replaceWith != null) {
      this.replaceWith = replaceWith;
      this.willReplaceByAnotherGameObject = true;
    } else {
      this.willReplaceByAnotherGameObject = false;
    }
  }
  
  @Override
  public void draw() {
    super.draw();
  }
  
  //If the mouse is on top of an object and we click it we add the collectable to the inventory
  // and temove it from the scene 
  
  @Override
  public void mouseClicked() {
    if(mouseIsHovering) {
      inventoryManager.addCollectable(collectable);
      sceneManager.getCurrentScene().removeGameObject(this);
      if(willReplaceByAnotherGameObject) {
        sceneManager.getCurrentScene().addGameObject(replaceWith);  
      }
    }
  }
}
