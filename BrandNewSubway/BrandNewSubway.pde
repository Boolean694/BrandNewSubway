ArrayList<Line> lines = new ArrayList<Line>();
ArrayList<Station> stns = new ArrayList<Station>();

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