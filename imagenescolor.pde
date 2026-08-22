PImage img;

color c;

void setup(){
size(800,600);
img = loadImage("data/pallas1.jpg");

}

void draw(){

  image(img,0,0);
  c = img.get(mouseX,mouseY);
  fill(c);
  rect(mouseX,mouseY,30,30);


}
