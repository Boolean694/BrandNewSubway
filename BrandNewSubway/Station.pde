class Station { 
  boolean transfer; 
  String name; 
  ArrayList <Line> lines; 
  int population; 
  float size; 
  float x,y;
  
  Station (float xcor, float ycor, String n) { 
    x = xcor; 
    y = ycor; 
    name = n;
  }
  
  Station (float xcor, float ycor) { 
    x = xcor; 
    y = ycor; 
  }
  
  void display () { 
  }
  
  float dist (Station s) { 
    float x1 = this.x; 
    float y1 = this.y; 
    float x2 = s.x; 
    float y2 = s.y; 
    
    return sqrt ( pow ( (x2 - x1),2) + pow ( (y2 - y1) ,2)); 
  }
  
  float setTransfer (boolean t) { 
    transfer  = t; 
  }
  
  void setPop (int p) { 
    population = p; 
  }
  
  void increasePop (int inc) { 
    population += inc; 
  }
  
  void addLine (Line l) { 
    lines.add (l); 
  }
  
  void remLine (Line l) { 
    lines.remove (l); 
  }
  
  Line addLine (Line l) { 
    lines.add (l); 
    return l; 
  }
  
  Line remLine (Line l) { 
    lines.remove (l); 
    return l; 
  }
}
