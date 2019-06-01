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
  
  void stationdisplay (float ix, float iy) { 
    noStroke();  
    fill (lcl); 
    ellipse (ix, iy, 25, 25); 
    PFont font = loadFont ("Arial-BoldMT-32.vlw"); 
    textFont (font); 
    textSize (22); 
    fill (255); 
    text (name, ix + 7, iy + 8);
    /*
    x = ix;
    y = iy; 
    */
  }
  
  
  void drawLine () { 
    for (int i = 0; i < stations.size() - 1; i ++) { 
      strokeWeight (4); 
      stroke (lcl);
      line (stations.get (i).x, stations.get(i).y, stations.get (i + 1).x, stations.get (i + 1).y); 
    }
    //stroke (0); 
  }
}
