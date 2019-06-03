ArrayList<Line> lines;
ArrayList<Station> stns;
Menu menu;
boolean buttonToggled;
Line currentToggle;
Button ctog;
boolean updatebu = false;
boolean stnSelected = false;
Station selected;

void mouseClicked() {  
  if (mouseX >= width * 0.65) { //clicked in menu
    for (Button b : menu.buttons) { 
      if (dist (mouseX, mouseY, b.x, b.y) < 45) { 
        if (ctog != null) {
          ctog.tog = false;
        }
        ctog = b;
        currentToggle = b.lin;
        buttonToggled = true; 
        updatebu = true;
        println (currentToggle.name); 
        break;
      }
    }
    stnSelected = false;
    selected = null;
  } else { //clicked in map
    int stnnum = 0;
    boolean useless = false; //by the end of for loop is true if clicked on station, false if not
    for (int q = 0; q < stns.size(); q++) {
      if (dist(mouseX, mouseY, stns.get(q).x, stns.get(q).y) <= 25/2) { //clicked on stn
        stnnum = q;
        useless = true;
        break;
      }
    }

    if (useless) {//click on station
      selected = stns.get(stnnum);
      stnSelected = true;
      stns.get(stnnum).selected = true;
      //stns.get(stnnum).clickedOn();
    } else {//not click on station
      if (buttonToggled) {
        placeStation (); 
        stnSelected = false;
        selected = null;
      }
    }
  }
}

void placeStation () { 
  if (mouseX < width * .65 && buttonToggled && get (mouseX, mouseY) != -6174228) { //if a line is selected and mouseX and mouseY is not over water 
    int xcor = mouseX; 
    int ycor = mouseY;
    Station adding = new Station (xcor, ycor); 
    currentToggle.stations.add (adding); 
    adding.lines.add (currentToggle); 
    stns.add (adding);
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
  color dgreen = color(34, 139, 34);
  color yellow = color(246, 230, 86);

  Line B = new Line("B", orange);
  Line D = new Line("D", orange);
  Line F = new Line("F", orange);
  Line M = new Line("M", orange);
  Line A = new Line("A", blue);
  Line C = new Line("C", blue);
  Line E = new Line("E", blue);
  Line one = new Line("1", red);
  Line two = new Line("2", red);
  Line three = new Line("3", red);
  Line four = new Line("4", dgreen);
  Line five = new Line("5", dgreen);
  Line six = new Line("6", dgreen);
  Line N = new Line("N", yellow);
  Line Q = new Line("Q", yellow);
  Line R = new Line("R", yellow);
  Line W = new Line("W", yellow);
  lines.add(A);
  lines.add(C);
  lines.add(E);
  lines.add(B);
  lines.add(D);
  lines.add(F);
  lines.add(M);
  lines.add(one);
  lines.add(two);
  lines.add(three);
  lines.add(four);
  lines.add(five);
  lines.add(six);
  lines.add(N);
  lines.add(Q);
  lines.add(R);
  lines.add(W);


  menu = new Menu(lines);
}

void draw() {

  PImage map = loadImage ("subwaymap.PNG"); 
  map.resize (780, height); 
  image (map, 0, 0); 

  menu.display();

  for (Line l : lines) { 
    l.drawLine ();
  }

  if (keyPressed && stnSelected) { 
    if ((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z') || key == ' ') {
      selected.name += key;
    } else { 
      if (key == BACKSPACE) { 
        try { 
          selected.name = selected.name.substring (0, selected.name.length () - 1);
        }
        catch (Exception e) { 
          selected.name = "";
        }
      }
    }
  }

  for (Station s : stns) { 
    s.display(); 
    if (stnSelected) {
      if ( (mouseX < selected.x + 73) && (mouseX > selected.x + 67) && (mouseY < selected.y - 98) && (mouseY > selected.y - 105)) { 
        selected.selected = false;
      }
      selected.clickedOn();
    }
  }

  if (updatebu) {
    menu.dispButtons();
    updatebu = false;
  }
}
