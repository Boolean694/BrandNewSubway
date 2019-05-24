ArrayList<Line> lines;
ArrayList<Station> stns;
Menu menu;
boolean buttonToggled;
Line currentToggle;

void mouseClicked() {
  if (mouseX >= width * 0.65) { //clicked in menu
    for (Button b : menu.buttons) { 
      if (dist (mouseX, mouseY, b.x, b.y) < 45) { 
        currentToggle = b.lin;
        buttonToggled = true; 
      } 
    }
     buttonToggled = false;
  } else { //clicked in map
    int stnnum = 0;
    boolean useless = false; //by the end of for loop is true if clicked on station, false if not
    for (int q = 0; q < stns.size(); q++) {
      if (dist(mouseX, mouseY, stns.get(q).x, stns.get(q).y) <= 25) { //clicked on stn
        stnnum = q;
        useless = true;
        break;
      }
    }
    if (useless) {
      stns.get(stnnum).clickedOn();
    } else {
      if (buttonToggled) {
        Station stn = new Station(mouseX, mouseY);//set this up with currentToggle line, update constructor
      }
    }
  }
}

void setup() {
  size(1200, 800);
  fill(255);  

  stns = new ArrayList<Station>();
  lines = new ArrayList<Line>();
  buttonToggled = false;

  color orange = color(255, 140, 0);
  color red = color(239, 52, 52);
  color blue = color(0, 0, 204);

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

  menu = new Menu(lines);
}
void draw() {
  background(255);
  menu.display();
}
