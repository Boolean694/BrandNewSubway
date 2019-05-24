class Menu {
  float xst;
  float wth;
  color blue = color (0,0,255);               color orange = color (255,128,0);
  color lightgreen = color (128,210,0);       color brown = color (160,82,45); 
  color grey = color (169,169,169);           color red = color (255,0,0); 
  color green = color (0,150,0);              color purple = color (204,0,204); 
  Button[][] buttons = { 
                        {new Button (new Line ("A", blue)), new Button (new Line ("C",blue)), new Button (new Line ("E", blue)), new Button (new Line ("B", orange))}, 
                        {new Button (new Line ("D", orange)), new Button (new Line ("F", orange)), new Button (new Line ("M", orange)),new Button (new Line ("G", lightgreen))}, 
                        {new Button (new Line ("J", brown)), new Button (new Line("Z", brown)), new Button (new Line ("L", grey)), new Button (new Line ("S", grey))}, 
                        {new Button (new Line ("1", red)), new Button (new Line ("2", red)), new Button (new Line ("3", red)), new Button (new Line ("4", green))}, 
                        {new Button (new Line ("5", green)), new Button (new Line ("6", green)), new Button (new Line ("7", purple))}
                       }; 
  
  public Menu() {
    xst = width * 0.65;
    wth = width * 0.35;
    //buttons = new ArrayList <Button> (); 
  }
  
  public Menu (ArrayList<Line> l) { 
  }
  
  void display() {
    fill(50);
    rect(xst, 0, wth, height);
    //PFont font = loadFont ("AnjaliOldLipi-56.vlw");
    PFont font = loadFont ("MicrosoftYaHeiUI-56.vlw"); 
    textFont (font); 
    textAlign (CENTER, BOTTOM);
    fill (255);
    text ("Brand New", (xst + width)/2, 100);
    text ("Subway", (xst + width)/2, 160);
    line (xst, 150, width, 150); 
    displayLines (); 
    line (xst, height - 75, width, height - 75); 
    
  }
  
  void displayLines () {
    float spacing = ((width - xst) - 4 * 90)/5;
    float[] xs = {837,939,1041,1143}; 
    float[] ys = {207,309,411,513,615}; 
    int row = 0; 
    for (Button[] b: buttons) { 
      for (int i = 0; i < b.length; i ++) { 
        b[i].display (xs[i],ys[row] + 35); 
      }
      row ++; 
    }
  }
}
