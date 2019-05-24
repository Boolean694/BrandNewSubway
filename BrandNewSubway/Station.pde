class Station {
  boolean express;
  ArrayList<Line> lines;
  float x;
  float y;
  String name;
  public Station(float ix, float iy, String nam) {
    x = ix;
    y = iy;
    name = nam;
    lines = new ArrayList<Line>();
  }
  public Station(float ix, float iy) {
    x = ix;
    y = iy;
    lines = new ArrayList<Line>();
  }
  void display() {
    fill(0);
    ellipse (x,y,50,50);
    fill(255);
    ellipse(x,y,35,35);
    fill(50);
    text(name,x,y - 60);
  }
  void setName(String n) {
    name = n;
  }
  void clickedOn() {//displays station info when clicked on
    
  }
}
