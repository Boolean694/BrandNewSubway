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
    ellipse (x, y, 50, 50);
    fill(255);
    ellipse(x, y, 35, 35);
    fill(50);
    text(name, x, y - 60);
  }
  void setName(String n) {
    name = n;
  }
  void clickedOn() {//displays station info when clicked on
    fill (0); 
    triangle (x, y, x - 8, y- 12 , x +8, y-12); 
    rect (x - 80, y-112, 160,100); 
    fill (255); 
    rect (x - 80, y- 102, 160,7);
    textSize (14); 
    stroke (255); 
    textAlign (RIGHT);
    text (name , x + 30 , y - 75); 
    //write code for displaying the lines at a station 
    /*
    Line a = new Line ("3", color (255,0,0));
    a.display (width / 2 - 60, height / 2 - 35);
    */
  }
}
