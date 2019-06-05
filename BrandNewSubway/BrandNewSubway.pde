ArrayList<Line> lines;
ArrayList<Station> stns;
Menu menu;
boolean buttonToggled;
Line currentToggle;
Button ctog; //current toggled button
boolean updatebu = false;
boolean stnSelected = false; //is a station selected and the display is shown?
Station selected;
boolean makingTransfers; 
Station transfer1; 
Station transfer2; 

void mouseClicked() {  
  if (mouseX >= width * 0.65) { //clicked in menu
    if (mouseX > width * 0.65 + 20 && mouseX < width *.65 + 140 && mouseY > height - 100 && mouseY < height - 40) { 
      makingTransfers = true; 
    }
    else { 
      makingTransfers = false; 
    }
    for (Button b : menu.buttons) { 
      if (dist (mouseX, mouseY, b.x, b.y) < 45) { 
        if (ctog != null) {
          ctog.tog = false;
        }
        if(menu.buttons.indexOf(b) == menu.buttons.indexOf(ctog)) {//untoggle
          ctog.tog = false;
          updatebu = true;
          ctog = null;
          buttonToggled = false;
          return;
        }
        ctog = b;
        ctog.tog = true;
        currentToggle = b.lin;
        buttonToggled = true; 
        updatebu = true;
        println (currentToggle.name); 
        break;
      }
    }
    stnSelected = false;
    selected = null;
  }
  
  else { //clicked in map
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
      if (!makingTransfers) { 
        selected = stns.get(stnnum);
        stnSelected = true;
        stns.get(stnnum).selected = true;
        //stns.get(stnnum).clickedOn();
      }
      else { 
        if (transfer1 == null) { 
          transfer1 = stns.get (stnnum); 
        }
        else { 
          transfer2 = stns.get (stnnum); 
          transfer1.transfers.add (transfer2); 
          transfer2.transfers.add (transfer1); 
        }
      }
    } else {//not click on station
      if (buttonToggled) {
        placeStation (); 
        stnSelected = false;
        selected = null;
      }
    }
  }
}

void deleteStation (Station s) { 
  stns.remove (s); 
  currentToggle.stations.remove (s); 
}

void placeStation () { 
  if (mouseX < width * .65 && buttonToggled && get (mouseX, mouseY) != -6174228) { //if a line is selected and mouseX and mouseY is not over water
    Station adding = new Station(mouseX,mouseY);
    stns.add(adding);
    if(currentToggle.stations.size() == 0 || currentToggle.stations.size() == 1) {//if 0 or 1 stations in line so far
      currentToggle.stations.add(adding);
      return;
    }
    //if 2 or more stns in line so far
    int stind = 0;
    float curlo = 2147483647;
    for(Station s: currentToggle.stations) {//find closest existing stn to new stn
      if(dist(mouseX,mouseY,s.x,s.y) < curlo) {
        curlo = dist(mouseX,mouseY,s.x,s.y);
        stind = currentToggle.stations.indexOf(s);
      }
    }
    Station sel = currentToggle.stations.get(stind);
    if(stind == 0) { //if closest is first stn
      Station o = currentToggle.stations.get(1);
      float a = dist(sel.x,sel.y,o.x,o.y);
      float b = dist(mouseX,mouseY,sel.x,sel.y);
      float c = dist(mouseX,mouseY,o.x,o.y);
      float theta = acos((sq(a) + sq(b) - sq(c))/(2 * a * b)); //law of cosines
      float angle = degrees(theta); //angle adding/sel/o
      
      System.out.println(angle);
      
      if(angle > 90 && angle < 270) {//add between stns
        currentToggle.stations.add(1,adding);
      }
      else {//add beginning
        currentToggle.stations.add(0,adding);
      }
    }
    else if(stind == currentToggle.stations.size() - 1) { //if closest is last stn
      Station o = currentToggle.stations.get(currentToggle.stations.size() - 2);
      float a = dist(sel.x,sel.y,o.x,o.y);
      float b = dist(mouseX,mouseY,sel.x,sel.y);
      float c = dist(mouseX,mouseY,o.x,o.y);
      float theta = acos((sq(a) + sq(b) - sq(c))/(2 * a * b)); //law of cosines
      float angle = degrees(theta); //angle adding/sel/o
      
      System.out.print(angle);
      
      if(angle > 90 && angle < 270) {//add between stns
        currentToggle.stations.add(currentToggle.stations.size() - 2,adding);
      }
      else {//add end
        currentToggle.stations.add(currentToggle.stations.size() - 1,adding);
      }
    }
    else {
      Station o = currentToggle.stations.get(stind - 1);
      float a = dist(sel.x,sel.y,o.x,o.y);
      float b = dist(mouseX,mouseY,sel.x,sel.y);
      float c = dist(mouseX,mouseY,o.x,o.y);
      float theta = acos((sq(a) + sq(b) - sq(c))/(2 * a * b)); //law of cosines
      float angle = degrees(theta); //angle adding/sel/o
      
      System.out.print(angle);
      
      if(angle > 90 && angle < 270) {//add between stns
        currentToggle.stations.add(stind,adding);
      }
      else {//add end
        currentToggle.stations.add(stind + 1,adding);
      }
    }
    /*int xcor = mouseX; 
    int ycor = mouseY;
    Station adding = new Station (xcor, ycor); 
    currentToggle.stations.add (adding); 
    adding.lines.add (currentToggle); 
    stns.add (adding); */
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

  if (keyPressed && stnSelected) { //typing stn name
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
    s.drawTransferLines (); 
  }

  if (stnSelected && (mouseX < selected.x + 70) && (mouseX > selected.x + 40) && (mouseY < selected.y - 12) && (mouseY > selected.y - 30)) { 
    if(mousePressed) {
      selected.selected = false; 
      deleteStation (selected);
    }
  }

  if (updatebu) {
    menu.dispButtons();
    updatebu = false;
  }
}
