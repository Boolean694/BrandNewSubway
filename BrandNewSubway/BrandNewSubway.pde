ArrayList<Line> lines = new ArrayList<Line>();
ArrayList<Station> stns = new ArrayList<Station>();
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
  ArrayList<Button> btns;
  public Menu() {
    xst = width * 0.65;
    wth = width * 0.35;
    btns = new ArrayList<Button>();
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
    displayOrangeLines (); 
    displayGLine (); 
    displayBrownLines (); 
    displayGreyLines (); 
    displayRedLines ();
    displayGreenLines (); 
    displaySevenLine (); 
  }
  
  Button[] bluelines () { 
    Button[] ace = new Button [3]; 
    ace[0] = new Button (new Line ("A", color(0,0,255))); 
    ace[1] = new Button (new Line ("C", color(0,0,255))); 
    ace[2] = new Button (new Line ("E", color(0,0,255))); 
    return ace; 
  }
  
  void displayBlueLines () {
    Button[] ace = bluelines ();
    float spacing = ((width - xst) - (90 * ace.length))/ (ace.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 120},
                     {xst + spacing * 2 + 90 * 1 + 45, 120},
                     {xst + spacing * 3 + 90 * 2 + 45, 120}};
    int coors = 0;
    for (Button lin: ace) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
  
  Button[] orangelines () { 
    Button[] bdfm = new Button [4]; 
    bdfm[0] = new Button (new Line ("B", color (255,128,0)));
    bdfm[1] = new Button (new Line ("D", color (255,128,0)));
    bdfm[2] = new Button (new Line ("F", color (255,128,0)));
    bdfm[3] = new Button (new Line ("M", color (255,128,0)));
    return bdfm; 
  }
  
  void displayOrangeLines () { 
    Button[] bdfm = orangelines ();
    float spacing = ((width - xst) - (90 * bdfm.length))/ (bdfm.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 200},
                     {xst + spacing * 2 + 90 * 1 + 45, 200},
                     {xst + spacing * 3 + 90 * 2 + 45, 200},
                     {xst + spacing * 4 + 90 * 3 + 45, 200}};
    int coors = 0;
    for (Button lin: bdfm) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
  
  Button G () { 
    return new Button (new Line ("G", color (128,255,0))); 
  }
  
  void displayGLine () { 
    Button ge = G();
    float spacing = ((width - xst) - (90))/ (2);
    float[] xys = {xst + spacing * 1 + 90 * 0 + 45, 280};
    ge.display (xys[0], xys[1]);
  }

  Button[] brownlines () { 
    Button[] jz = new Button [2]; 
    jz[0] = new Button (new Line ("J", color (160,82,45)));
    jz[1] = new Button (new Line ("Z", color (160,82,45)));
    return jz; 
  }
  
  void displayBrownLines () { 
    Button[] jz = brownlines ();
    float spacing = ((width - xst) - (90 * jz.length))/ (jz.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 360},
                     {xst + spacing * 2 + 90 * 1 + 45, 360}};
    int coors = 0;
    for (Button lin: jz) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }

  Button[] greylines () { 
    Button[] ls = new Button [2]; 
    ls[0] = new Button (new Line ("L", color (169,169,169)));
    ls[1] = new Button (new Line ("S", color (169,169,169)));
    return ls; 
  }
  
  void displayGreyLines () { 
    Button[] ls = greylines ();
    float spacing = ((width - xst) - (90 * ls.length))/ (ls.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 440},
                     {xst + spacing * 2 + 90 * 1 + 45, 440}};
    int coors = 0;
    for (Button lin: ls) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }

  Button[] redlines () { 
    Button[] ott = new Button [3]; 
    ott[0] = new Button (new Line ("1", color (255,0,0)));
    ott[1] = new Button (new Line ("2", color (255,0,0)));
    ott[2] = new Button (new Line ("3", color (255,0,0)));
    return ott; 
  }
  
  void displayRedLines () { 
    Button[] ott = redlines ();
    float spacing = ((width - xst) - (90 * ott.length))/ (ott.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 520},
                     {xst + spacing * 2 + 90 * 1 + 45, 520},
                     {xst + spacing * 3 + 90 * 2 + 45, 520}};
    int coors = 0;
    for (Button lin: ott) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
  
  Button[] greenlines () { 
    Button[] ffs = new Button [3]; 
    ffs[0] = new Button (new Line ("4", color (0,128,0)));
    ffs[1] = new Button (new Line ("5", color (0,128,0)));
    ffs[2] = new Button (new Line ("6", color (0,128,0)));
    return ffs; 
  }
  
  void displayGreenLines () { 
    Button[] ffs = greenlines ();
    float spacing = ((width - xst) - (90 * ffs.length))/ (ffs.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 600},
                     {xst + spacing * 2 + 90 * 1 + 45, 600},
                     {xst + spacing * 3 + 90 * 2 + 45, 600}};
    int coors = 0;
    for (Button lin: ffs) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }

  Button seven () { 
    return new Button (new Line ("7", color (204,0,204))); 
  }
  
  void displaySevenLine () { 
    Button sev = seven();
    float spacing = ((width - xst) - (90))/ (2);
    float[] xys = {xst + spacing * 1 + 90 * 0 + 45, 680};
    sev.display (xys[0], xys[1]);
  }
}

class Button {
  int type; //0: line, 1: custom line
  Line lin; 
  
  public Button (Line l) { 
    type = 0; 
    lin = l; 
  }
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

void mouseClicked() {
  
}

void setup() {
  size(1200,800);
  fill(255);
  
  color orange = color(255,140,0);
  color red = color(239,52,52);
  color blue = color(0,0,204);
  
  Line B = new Line("B", orange);
  Line D = new Line("D", orange);
  Line F = new Line("F", orange);
  Line M = new Line("M", orange);
  Line A = new Line("A", blue);
  Line C = new Line("C", blue);
  Line E = new Line("E", blue);
  lines.add(A);
  lines.add(C);
  lines.add(E);
  lines.add(B);
  lines.add(D);
  lines.add(F);
  lines.add(M);
}
void draw() {
  background(255);
  Menu me = new Menu();
  me.display(); 
}