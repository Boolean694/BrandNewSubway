class Station {
  boolean express;
  ArrayList<Line> lines;
  float x;
  float y;
  String name;
  String borough; 
  boolean selected; 

  public Station(float ix, float iy, String nam) {
    x = ix;
    y = iy;
    name = nam;
    borough = ""; 
    lines = new ArrayList<Line>();
    selected = false;
  }
  
  public Station(float ix, float iy) {
    x = ix;
    y = iy;
    lines = new ArrayList<Line>();
    name = ""; 
    borough = ""; 
    selected = false;
  }
  
  void display() {
    stroke (255); 
    fill(255);
    ellipse (x, y, 25/2, 25/2);
    stroke (0); 
    fill(0);
    ellipse(x, y, 35/4, 35/4);
    fill(50);
    //text(name, x, y - 60);
  }
    
  void setName(String n) {
    name = n;
  }
  
  void clickedOn() {//displays station info when clicked on    
    if (selected) { 
      fill (0); 
      triangle (x, y, x - 8, y- 12, x +8, y-12); 
      rect (x - 80, y-112, 160, 100); 
      fill (255); 
      noStroke (); 
      rect (x - 80, y- 102, 160, 5);
      stroke (192,192,192); 
      line (x + 60, y - 30, x + 70, y - 20); 
      line (x + 70, y - 30, x + 60, y - 20); 
      PFont font = loadFont ("Dialog.plain-18.vlw"); 
      textFont (font); 
      stroke (255); 
      textAlign (CENTER, CENTER);
      if (name.length () < 1) { 
        text ("Station", x, y - 80); 
      }
      else { 
        text (name, x , y - 80); 
      }
      float xcor = x - 80 + 20; 
      for (Line l: lines) { 
        l.stationdisplay (xcor, y - 112 +100 - 20); 
        xcor += 55; 
      }
      //write code for displaying the lines at a station 
      /*
            Line a = new Line ("3", color (255,0,0));
       a.stationdisplay (width / 2 - 60, height / 2 - 35);
       */
    }
  }
  
  boolean isBronx (float xcor, float ycor) { 
    if (xcor <= 475) { 
      if (xcor >= 23 && xcor <= 94) { 
        if (ycor >= 104 && ycor <= 112) { 
          return true; 
        }
      }
      
      if (xcor > 94 && xcor <= 108) { 
        if (ycor >= 112 && ycor <= 192) { 
          return true; 
        }
      }
      
      if (xcor > 108 && xcor <= 170) { 
        if (ycor >= 192 && ycor <= 250) { 
          return true; 
        }
      }
      
      if (xcor > 170 && xcor <= 237) { 
        if (ycor >= 250 && ycor <= 252) { 
          return true; 
        }
      }
      
      if (xcor > 237 && xcor <= 381) { 
        if (ycor >= 194 && ycor <= 252) { 
          return true; 
        }
      }
      
      if (xcor > 381 && xcor <= 462) { 
        if (ycor >= 142 && ycor <= 194) { 
          return true; 
        }
      }
      
      if (xcor > 462 && xcor <= 475) { 
        if (ycor >= 0 && ycor <= 142) { 
          return true; 
        }
      }
    }
    return false; 
  }
}
