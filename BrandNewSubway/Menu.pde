class Menu {
  float xst;
  float wth;
  boolean buttonAdded;
  ArrayList<Button> buttons; 
  public Menu(ArrayList<Line> li) {
    xst = width * 0.65;
    wth = width * 0.35;
    buttons = new ArrayList <Button> (); //there should be a different system for non-line buttons
    for (int stln = 0; stln < li.size(); stln++) {//fills buttons arraylist
      buttons.add(new Button(li.get(stln)));
      println(buttons.get(stln).lin.name);
    }
    buttonAdded = true;
    menuSetup();
  }
  void dispButtons() {
    for(int q = 0; q < buttons.size(); q++) { //start displaying buttons at y=200
      buttons.get(q).display(xst + (((float)q % 4.0 + 1.0)/5.0)*xst,250 + ((q / 4)*100));
    }
  }
  void menuSetup() {
    fill(50);
    rect(xst, 0, wth, height);
    //PFont font = loadFont ("AnjaliOldLipi-56.vlw");
    PFont font = loadFont ("MicrosoftYaHeiUI-56.vlw"); 
    textFont (font); 
    textAlign (CENTER, BOTTOM);
    fill (255);
    text ("Brand New", (xst + width)/2, 100);
    text ("Subway", (xst + width)/2, 150);
  }
  void display() {
    if(buttonAdded) {
      dispButtons();
      buttonAdded = false;
    }
  }
}
