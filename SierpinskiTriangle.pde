public void setup(){
  size(500,500);
  fill(0);
  noStroke();
}

public void draw(){
  sierpinski(100,400,300);
}

public void sierpinski(int x, int y, int len){
  if(len<5){
    triangle(x,y,x+len,y,x+(len/2), y-len);
  } else {
    int lentwo = len/2;
    sierpinski(x, y, lentwo);
    sierpinski(x+lentwo, y, lentwo);
    sierpinski(x+(lentwo/2), y-lentwo, lentwo);
  }
}
