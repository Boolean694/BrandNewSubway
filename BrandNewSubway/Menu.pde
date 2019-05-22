class Menu {
  float xst;
  float wth;
  ArrayList<Button> btns;
  public Menu() {
    xst = width * 0.65;
    wth = width * 0.35;
    btns = new ArrayList<Button>();
  }
  void display() {
    fill(50);
    rect(xst, 0, wth, height);
    float y = height / 10;
    /* //made lines to section off menu 
    fill (255); 
    for (float i = y; i < height; i += y) { 
      line (xst, i, width, i); 
    }
    */
    
    displayBlueLines (); 
  }
  
  Line [] bluelines () { 
    Line[] ace = new Line [3]; 
    ace[0] = new Line ("A", color(0,0,255)); 
    ace[1] = new Line ("C", color(0,0,255)); 
    ace[2] = new Line ("E", color(0,0,255)); 
    return ace; 
  }
  
  void displayBlueLines () { 
    Line[] ace = bluelines ();
    float[][] xys = {{xst + 7.5 * 1 + 90 * 0 + 45, 120},
                     {xst + 7.5 * 2 + 90 * 1 + 45, 120},
                     {xst + 7.5 * 3 + 90 * 2 + 45, 120}};
    int coors = 0; 
    for (Line lin: ace) { 
      lin.display (xys[coors][0], xys[coors][1]); 
      coors ++; 
    }
  }
  
  
}
