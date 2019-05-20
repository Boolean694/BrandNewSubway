class Line {
  int order;
  String name;
  color lcl;
  public Line() {
    
  }
}
class Station {
  boolean express;
  float x;
  float y;
  public Station() {
    fill(0);
    circle(x,y,50);
    fill(255);
    circle(x,y,35);
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
void setup() {
  size(1200,800);
  fill(255);
}
void draw() {
  background(255);
  Menu me = new Menu();
  me.display();
}
