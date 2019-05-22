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
  
  void display (float x, float y) { 
    stroke (0,0,255); 
    fill (lcl); 
    ellipse (x,y,45,45); 
    textSize (32); 
    fill (255); 
    text (name, x - 10, y + 10); 
  }
}
