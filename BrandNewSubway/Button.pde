class Button {
  int type; //0: line, 1: custom line
  String line;
  String displ;
  public Button(int ty, String st) {
    type = ty;
    if(type == 0) {
      line = st;
      displ = st;
    }
    else {
      line = null;
      
    }
  }
}
