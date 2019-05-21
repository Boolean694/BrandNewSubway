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
    circle(x,y,50);
    fill(255);
    circle(x,y,35);
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
  
  Line[] orangelines () { 
    Line[] bdfm = new Line [4]; 
    bdfm[0] = new Line ("B", color (255,128,0));
    bdfm[1] = new Line ("D", color (255,128,0));
    bdfm[2] = new Line ("F", color (255,128,0));
    bdfm[3] = new Line ("M", color (255,128,0));
    return bdfm; 
  }
  
  Line[] G () { 
    Line[] g = new Line [1]; 
    g[0] = new Line ("G", color (128,255,0));
    return g; 
  }
  
  Line[] brownlines () { 
    Line[] jz = new Line [2]; 
    jz[0] = new Line ("J", color (160,82,45));
    jz[1] = new Line ("Z", color (160,82,45));
    return jz; 
  }
  
  Line[] greylines () { 
    Line[] ls = new Line [2]; 
    ls[0] = new Line ("L", color (169,169,169));
    ls[1] = new Line ("S", color (169,169,169));
    return ls; 
  }
  
  Line[] redlines () { 
    Line[] ott = new Line [3]; 
    ott[0] = new Line ("1", color (255,0,0));
    ott[1] = new Line ("2", color (255,0,0));
    ott[2] = new Line ("3", color (255,0,0));
    return ott; 
  }
  
  Line[] greenlines () { 
    Line[] ffs = new Line [3]; 
    ffs[0] = new Line ("4", color (0,255,0));
    ffs[1] = new Line ("5", color (0,255,0));
    ffs[2] = new Line ("6", color (0,255,0));
    return ffs; 
  }
  
  Line seven () { 
    return new Line ("7", color (204,0,204)); 
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
