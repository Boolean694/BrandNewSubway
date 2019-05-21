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
