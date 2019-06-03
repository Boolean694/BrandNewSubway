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
    setBorough (); 
    lines = new ArrayList<Line>();
    selected = false;
  }

  public Station(float ix, float iy) {
    x = ix;
    y = iy;
    lines = new ArrayList<Line>();
    name = ""; 
    setBorough (); 
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

  void setBorough () {
    if (isBronx (x, y)) { 
      borough = "Bronx";
    } else { 
      if (isManhattan (x, y)) { 
        borough = "Manhattan";
      } else { 
        if (isQueens (x, y)) { 
          borough = "Queens";
        } else { 
          if (isBrooklyn (x, y)) { 
            borough = "Brooklyn";
          } else {
            borough = "NA";
          }
        }
      }
    }
  }

  void clickedOn() {//displays station info when clicked on    
    if (selected) { 
      fill (0); 
      triangle (x, y, x - 8, y- 12, x +8, y-12); 
      rect (x - 80, y-112, 160, 100); 
      fill (255); 
      noStroke (); 
      rect (x - 80, y- 102, 160, 5);
      stroke (192, 192, 192); 
      line (x + 60, y - 30, x + 70, y - 20); 
      line (x + 70, y - 30, x + 60, y - 20); 
      PFont font = loadFont ("Dialog.plain-18.vlw"); 
      textFont (font); 
      stroke (255); 
      textAlign (CENTER, CENTER);
      if (name.length () < 1) { 
        text ("Station", x, y - 80);
      } else { 
        text (name, x, y - 80);
      }
      PFont f = loadFont ("Dialog.plain-16.vlw"); 
      textFont (f);
      text (borough, x, y - 60); 
      float xcor = x - 80 + 20; 
      for (Line l : lines) { 
        l.stationdisplay (xcor, y - 112 +100 - 20); 
        xcor += 55;
      }
    }
  }

  boolean btwn (float urx, float ury, float firstx, float firsty, float lastx, float lasty) { 
    return urx >= firstx && urx <= lastx && ury >= firsty && ury <= lasty;
  }

  boolean isBronx (float xcor, float ycor) { 
    if (btwn (xcor, ycor, 0, 0, 429, 104)) { 
      return true;
    }
    if (btwn (xcor, ycor, 100, 104, 380, 200)) { 
      return true;
    }

    if (btwn (xcor, ycor, 100, 104, 171, 249)) { 
      return true;
    }
    if (btwn (xcor, ycor, 171, 104, 300, 300)) { 
      return true;
    }
    if (btwn (xcor, ycor, 337, 0, 453, 139)) { 
      return true;
    }
    return false;
  }

  boolean isManhattan (float xcor, float ycor) { 
    if (btwn (xcor, ycor, 20, 121, 85, 192)) { 
      return true;
    }

    if (btwn (xcor, ycor, 14, 178, 86, 427)) { 
      return true;
    } 
    if (btwn (xcor, ycor, 86, 264, 187, 436)) { 
      return true;
    }
    if (btwn (xcor, ycor, 25, 427, 133, 620)) { 
      return true;
    }
    if (btwn (xcor, ycor, 25, 519, 242, 620)) { 
      return true;
    }
    if (btwn (xcor, ycor, 133, 436, 242, 519)) { 
      return true;
    }
    return false;
  }

  boolean isQueens (float xcor, float ycor) { 
    if (btwn (xcor, ycor, 406, 276, 780, 519)) { 
      return true;
    }
    if (btwn (xcor, ycor, 224, 282, 406, 519)) { 
      return true;
    }
    if (btwn (xcor, ycor, 408, 180, 780, 276)) { 
      return true;
    }
    if (btwn (xcor, ycor, 473, 150, 780, 180)) { 
      return true;
    }
    if (btwn (xcor, ycor, 706, 64, 780, 150)) { 
      return true;
    }
    if (btwn (xcor, ycor, 500, 64, 706, 150)) { 
      return true;
    }
    return false;
  }

  boolean isBrooklyn (float xcor, float ycor) { 
    if (btwn (xcor, ycor, 246, 519, 780, 800)) { 
      return true;
    }
    return false;
  }
}
