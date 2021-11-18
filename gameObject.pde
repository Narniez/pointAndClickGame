// holds all important information for an object and methods for creating an object with or without an image

class GameObject { 
  protected int x;
  protected int y;
  protected int owidth;
  protected int oheight;
  private String identifier;
  private boolean hasImage;
  private boolean hasHoverImage;
  private PImage gameObjectImage;
  private PImage gameObjectImageHover;
  protected boolean mouseIsHovering;
  
  
  // creates an object without an image 
  public GameObject(String identifier, int x, int y, int owidth, int oheight) {
    this(identifier, x, y, owidth, oheight, "");
  }
  
  // creates an object with an image 
  public GameObject(String identifier, int x, int y, int owidth, int oheight, String gameObjectImageFile) {
    this.identifier = identifier;
    this.x = x;
    this.y = y;
    this.owidth = owidth;
    this.oheight = oheight;
    this.hasImage = !gameObjectImageFile.equals(""); 
    if(this.hasImage) {
       this.gameObjectImage = loadImage(gameObjectImageFile);
    }
    hasHoverImage = false;
    mouseIsHovering = false;
  }
  
  //initialized the hoverImage if used 
  
  public void setHoverImage(String gameObjectImageHoverFile) {
    this.gameObjectImageHover = loadImage(gameObjectImageHoverFile);
    hasHoverImage = true;
  }
  
  // Draws something if it has an Image 
  //Checks if the mouse is on top
  // Changes the image if it has hoverImage
  public void draw() {
    if(hasImage) {
      if(mouseIsHovering && hasHoverImage) {
        image(gameObjectImageHover, x, y, owidth, oheight);
      } else {
        image(gameObjectImage, x, y, owidth, oheight);
      }
    }
  }
  
  public void mouseMoved() {
    mouseIsHovering = false;
    if(mouseX >= x && mouseX <= x + owidth &&
       mouseY >= y && mouseY <= y + oheight) {
        mouseIsHovering = true;
     }
  }
  
  public void mouseClicked() { }
  
  public String getIdentifier() {
    return this.identifier;
  }

  @Override 
  public boolean equals(Object obj) { 
    if (obj == this) { return true; } 
    if (obj == null || obj.getClass() != this.getClass()) { return false; } 
    GameObject otherGameObject = (GameObject) obj; 
    return otherGameObject.getIdentifier().equals(this.identifier);
  } 

  @Override 
  public int hashCode() { 
    final int prime = 11;
    return prime * this.identifier.hashCode();
  }
}
