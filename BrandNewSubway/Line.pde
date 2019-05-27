class Line {
  int order;
  String name;
  color lcl;
  ArrayList<Station> stations;
  public Line(String st, color c) {
    lcl = c;
    name = st;
    stations = new ArrayList<Station>();
  }
  
  void display (float ix, float iy) { 
    noStroke();  
    fill (lcl); 
    ellipse (ix, iy, 25, 25); 
    PFont font = loadFont ("Arial-BoldMT-32.vlw"); 
    textFont (font); 
    textSize (22); 
    fill (255); 
    text (name, ix + 6, iy + 8);
    /*
    x = ix;
    y = iy; 
    */
  }
  
}
