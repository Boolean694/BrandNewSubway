ArrayList<Line> lines;
ArrayList<Station> stns;
Menu menu;
boolean buttonToggled;
Line currentToggle;
Button ctog;
boolean updatebu = false;

void mouseClicked() {
  if (mouseX >= width * 0.65) { //clicked in menu
    for (Button b : menu.buttons) { 
      if (dist (mouseX, mouseY, b.x, b.y) < 45) { 
        if(ctog != null){ctog.tog = false;}
        ctog = b;
        currentToggle = b.lin;
        buttonToggled = true; 
        updatebu = true;
        println (currentToggle.name); 
        break;
      } 
    }
    
  } 
  
  else { //clicked in map
    int stnnum = 0;
    boolean useless = false; //by the end of for loop is true if clicked on station, false if not
    for (int q = 0; q < stns.size(); q++) {
      if (dist(mouseX, mouseY, stns.get(q).x, stns.get(q).y) <= 25) { //clicked on stn
        stnnum = q;
        useless = true;
        break;
      }
    }
    if (useless) {//click on station
      stns.get(stnnum).clickedOn();
    } else {//not click on station
      if (buttonToggled) {
        Station stn = new Station(mouseX, mouseY);//set this up with currentToggle line, update constructor
        int curs = 2147483647;
        int ind = 0;
        for(Station s : currentToggle.stations) {//gets closest stn in selected line
          if((int)dist(stn.x,stn.y,s.x,s.y) < curs) {
            curs = (int)dist(stn.x,stn.y,s.x,s.y);
            ind = currentToggle.stations.indexOf(s);
          }
        }
      }
    }
  }
  placeStation (); 
}

void placeStation () { 
  if (mouseX < width * .65 && buttonToggled) { 
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


  menu = new Menu(lines);
}
void draw() {
  
  PImage map = loadImage ("subwaymap.PNG"); 
  map.resize (780, height); 
  image (map, 0,0); 
  
  menu.display();
  
  for (int i = 0; i < stns.size (); i ++) { 
    stns.get(i).display(); 
  }
  
  for (int i = 0; i < lines.size (); i ++) { 
    lines.get(i).drawLine (); 
  }
  if(updatebu) {
    menu.dispButtons();
    updatebu = false;
  }
}
