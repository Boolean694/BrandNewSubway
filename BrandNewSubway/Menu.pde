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
    /* //made lines to section off menu 
    float y = height / 10;
    fill (255); 
    for (float i = y; i < height; i += y) { 
      line (xst, i, width, i); 
    }
    */
    
    displayBlueLines (); 
    displayOrangeLines (); 
    displayGLine (); 
    displayBrownLines (); 
    displayGreyLines (); 
    displayRedLines ();
    displayGreenLines (); 
    displaySevenLine (); 
  }
  
  Button[] bluelines () { 
    Button[] ace = new Button [3]; 
    ace[0] = new Button (new Line ("A", color(0,0,255))); 
    ace[1] = new Button (new Line ("C", color(0,0,255))); 
    ace[2] = new Button (new Line ("E", color(0,0,255))); 
    return ace; 
  }
  
  void displayBlueLines () {
    Button[] ace = bluelines ();
    float spacing = ((width - xst) - (90 * ace.length))/ (ace.length + 1);
    float[][] xys = {{xst + spacing * 1 + 90 * 0 + 45, 120},
                     {xst + spacing * 2 + 90 * 1 + 45, 120},
                     {xst + spacing * 3 + 90 * 2 + 45, 120}};
    int coors = 0;
    for (Button lin: ace) {
      lin.display (xys[coors][0], xys[coors][1]);
      coors ++;
    }
  }
}