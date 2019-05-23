class Menu {
  float xst;
  float wth;
  ArrayList<Button> buttons; 
  public Menu() {
    xst = width * 0.65;
    wth = width * 0.35;
    buttons = new ArrayList <Button> (); 
  }
  
  void display() {
    fill(50);
    rect(xst, 0, wth, height);
    PFont font = loadFont ("AnjaliOldLipi-56.vlw");
    textFont (font); 
    textAlign (CENTER, BOTTOM);
    fill (255);
    text ("Brand New", (xst + width)/2, 100);
    text ("Subway", (xst + width)/2, 150);
  }
}