class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  float x, y; 
  boolean tog; //toggled?

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
    if (lin.name.equals ("N") || lin.name.equals ("Q") || lin.name.equals ("R") || lin.name.equals ("W")) { 
      fill (0); 
    }
    else { 
      fill (255); 
    }
    textAlign (CENTER,CENTER); 
    text (lin.name, ix, iy );
    x = ix;
    y = iy; 
  }
}
