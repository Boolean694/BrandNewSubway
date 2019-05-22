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
    ellipse(x,y,35,35);
    fill(50);
    text(name,x,y - 60);
  }
}
class Menu {
  float xst;
  float wth;
  public Menu() {
    xst = width * 0.65;
    wth = width * 0.35;
    
  }
  void display() {
    fill(50);
    rect(xst, 0, wth, height);
    /* //made lines to section off menu 
    float y = height / 10;
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
    float spacing = ((width - xst) - (90 * ace.length))/ (ace.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 120},
                     {xst + spacing * 2 + 90 * 1 + 45, 120},
                     {xst + spacing * 3 + 90 * 2 + 45, 120}};
    int coors = 0;
    for (Line lin: ace) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
  
  Line[] orangelines () { 
    Line[] bdfm = new Line [4]; 
    bdfm[0] = new Line ("B", color (255,128,0));
    bdfm[1] = new Line ("D", color (255,128,0));
    bdfm[2] = new Line ("F", color (255,128,0));
    bdfm[3] = new Line ("M", color (255,128,0));
    return bdfm; 
  }
  
  void displayOrangeLine () { 
    Line[] bdfm = orangelines ();
    float spacing = ((width - xst) - (90 * bdfm.length))/ (bdfm.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 120},
                     {xst + spacing * 2 + 90 * 1 + 45, 120},
                     {xst + spacing * 3 + 90 * 2 + 45, 120}};
    int coors = 0;
    for (Line lin: bdfm) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
}
class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  
  public Button(int ty, Line l) {
    type = ty;
    lin = l;
  }
  
  void display (float x, float y) { 
    noStroke();  
    fill (lin.lcl); 
    ellipse (x,y,45,45); 
    textSize (32); 
    fill (255); 
    text (lin.name, x - 10, y + 10); 
  }
  
}
void newStn(float x, float y, String n) {
  Station stn = new Station(x,y,n);
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
