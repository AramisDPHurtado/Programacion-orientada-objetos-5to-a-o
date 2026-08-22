PImage img;

void setup(){
size(800,600);
img = loadImage("data/pallas.jpg");

}

void draw(){
image(img,mouseX,mouseY);
}
