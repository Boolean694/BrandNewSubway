class Station {
  boolean express;
  ArrayList<Line> lines;
  float x;
  float y;
  String name;
  boolean selected; 

  public Station(float ix, float iy, String nam) {
    x = ix;
    y = iy;
    name = nam;
    lines = new ArrayList<Line>();
    selected = false;
  }
  public Station(float ix, float iy) {
    x = ix;
    y = iy;
    lines = new ArrayList<Line>();
    name = "Station"; 
    selected = false;
  }
  void display() {
    stroke (255); 
    fill(255);
    ellipse (x, y, 25/2, 25/2);
    stroke (0); 
    fill(0);
    ellipse(x, y, 35/4, 35/4);
    fill(50);
    //text(name, x, y - 60);
  }
  void setName(String n) {
    name = n;
  }
  void clickedOn() {//displays station info when clicked on    
    if (selected) { 
      fill (0); 
      triangle (x, y, x - 8, y- 12, x +8, y-12); 
      rect (x - 80, y-112, 160, 100); 
      fill (255); 
      noStroke (); 
      rect (x - 80, y- 102, 160, 5);
      textSize (14); 
      stroke (255); 
      textAlign (RIGHT);
      text (name, x + 30, y - 75); 
      //write code for displaying the lines at a station 
      /*
            Line a = new Line ("3", color (255,0,0));
       a.stationdisplay (width / 2 - 60, height / 2 - 35);
       */
    }
  }
}
