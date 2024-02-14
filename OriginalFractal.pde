public void setup(){
  background(250);
  size(500,500);
  strokeWeight(5);
  stroke(82, 135, 70);
  line(250,250,255,500);
  strokeWeight(2);
  stroke(0);
}
public void draw(){
  myFractal(250,250,150);
}
public void myFractal(int x, int y, int siz){
  int f = siz- (siz/10);
  fill(199, 101, 145);
  ellipse(x-(f-f/4),y-(f-f/4),siz,siz);
  ellipse(x+(f-f/4),y-(f-f/4),siz,siz);
  ellipse(x,y-f,siz,siz);
  ellipse(x-f,y,siz,siz);
  ellipse(x-(f-f/4),y+(f-f/4),siz,siz);
  ellipse(x+(f-f/4),y+(f-f/4),siz,siz);
  ellipse(x,y+f,siz,siz);
  ellipse(x+f,y,siz,siz);
  if (siz>5){
    myFractal(x,y,siz-(siz/5));
  }
}
