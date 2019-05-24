class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  float x, y; 

  public Button (Line l) { 
    type = 0; 
    lin = l;
  }
  public Button(int ty, Line l) {
    type = ty;
    lin = l;
  }

  void display (float ix, float iy) { 
    noStroke();  
    fill (lin.lcl); 
    ellipse (x, y, 45, 45); 
    PFont font = loadFont ("Arial-BoldMT-32.vlw"); 
    textFont (font); 
    fill (255); 
    text (lin.name, ix, iy + 17);
    x = ix;
    y = iy;
  }
}
