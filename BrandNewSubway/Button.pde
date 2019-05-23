class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  
  public Button (Line l) { 
    type = 0; 
    lin = l; 
  }
  public Button(int ty, Line l) {
    type = ty;
    lin = l;
  }
  
  void display (float x, float y) { 
    noStroke();  
    fill (lin.lcl); 
    ellipse (x,y,45,45); 
    textSize (32); 
    fill (255); 
    text (lin.name, x - 10, y + 10); 
  }
  
}