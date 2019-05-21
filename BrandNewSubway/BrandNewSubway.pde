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
  void display() {
    fill(0);
    ellipse (x,y,50,50);
    fill(255);
    ellipse (x,y,35,35);
  }
}
class Menu {
  float xst;
  float wth;
  public Menu() {
    xst = width * 0.75;
    wth = width * 0.25;
    
  }
  void display() {
    fill(50);
    rect(xst, 0, wth, height);
    float y = height / 10;
    /* //made lines to section off menu 
    fill (255); 
    for (float i = y; i < height; i += y) { 
      line (xst, i, width, i); 
    }
    */
    
    displayBlueLines (); 
  }
  
  Line [] bluelines () { 
    Line[] ace = new Line [3]; 
    ace[0] = new Line ("A", color(0,0,255)); 
    ace[1] = new Line ("C", color(0,0,255)); 
    ace[2] = new Line ("E", color(0,0,255)); 
    return ace; 
  }
  
  void displayBlueLines () { 
    Line[] ace = bluelines ();
    float[][] xys = {{xst + 7.5 * 1 + 90 * 0 + 45, 120},
                     {xst + 7.5 * 2 + 90 * 1 + 45, 120},
                     {xst + 7.5 * 3 + 90 * 2 + 45, 120}};
    int coors = 0; 
    for (Line lin: ace) { 
      lin.display (xys[coors][0], xys[coors][1]); 
      coors ++; 
    }
  }
 
}
class Button {
  int type; //0: line, 1: custom line
  String line;
  String displ;
  public Button(int ty, String st) {
    type = ty;
    if(type == 0) {
      line = st;
      displ = st;
    }
    else {
      line = null;
      
    }
  }
}
void setup() {
  size(1200,800);
  fill(255);
}
void draw() {
  background(255);
  Menu me = new Menu();
  me.display(); 
}
