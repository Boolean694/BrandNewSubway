class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  float x, y; 
  boolean tog;

  public Button (Line l) { 
    type = 0; 
    lin = l;
    tog = false;
  }
  public Button(int ty, Line l) {
    type = ty;
    lin = l;
    tog = false;
  }

  void display (float ix, float iy) { 
    noStroke();  
    if(tog) {
      fill(0);
      ellipse(ix,iy,45,45);
      fill(lin.lcl);
      ellipse(ix,iy,40,40);
    }
    else {
      fill (lin.lcl); 
      ellipse (ix, iy, 45, 45); 
    }
    PFont font = loadFont ("Arial-BoldMT-32.vlw"); 
    textFont (font); 
    fill (255); 
    textAlign (CENTER,CENTER); 
    text (lin.name, ix, iy );
    x = ix;
    y = iy; 
  }
}
