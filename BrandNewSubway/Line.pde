class Line { 
  String name; 
  color c; 
  ArrayList<Station> stops; 
  
  Line (String n, color co) { 
    name = n; 
    c = co; 
  }
  
  void display () { 
  }
  
  void addStation (Station s) { 
    stops.add (s); 
  }
  
  void remStation (Station s) { 
    stops.remove (s); 
  }
  
  Station addStation (Station s) { 
    stops.add (s);
    return s; 
  }
  
  Station remStation (Station s) { 
    stops.remove (s); 
    return s; 
  }
  
  int length () { 
    return stops.size ();
  }
  
  void setColor (color co) { 
    c = co; 
  }
}
