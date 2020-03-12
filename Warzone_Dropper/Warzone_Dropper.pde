/* @pjs preload="Dam.png", "Military Base.png", "Quarry.png", "Airport.png", "TV Station.png", "Storage Town.png", "Superstore.png", "Stadium.png", "Lumber.png", "Farmland.png", "Boneyard.png", "Train Station.png", "Hospital.png", "Downtown.png", "Farmland.png", "Promenade West.png", "Promenade East.png", "Hills.png", "Park.png", "Port.png", "Prison.png */

String[] place = {"Dam", "Military Base", "Quarry", "Airport", "TV Station", "Storage Town", "Superstore", "Stadium", "Lumber", "Farmland", "Boneyard", "Train Station", "Hospital", "Downtown", "Farmland", "Promenade West", "Promenade East", "Hills", "Park", "Port", "Prison"};
String[] Pics = {"Dam.png", "Military Base.png", "Quarry.png", "Airport.png", "TV Station.png", "Storage Town.png", "Superstore.png", "Stadium.png", "Lumber.png", "Farmland.png", "Boneyard.png", "Train Station.png", "Hospital.png", "Downtown.png", "Farmland.png", "Promenade West.png", "Promenade East.png", "Hills.png", "Park.png", "Port.png", "Prison.png"};
PImage Map, Pic, Zoomer;
int Choice, mouseClickCounter, ZoomCounter;
Boolean Zoom;
color c;

void setup() {
  size(750, 750);
  Choice = int(random(place.length));
  Pic = loadImage(Pics[Choice]);
  Map = loadImage("map_overview_550.png");
  textAlign(CENTER);
  imageMode(CENTER);
  rectMode(CENTER);
  Zoom = false;
  ZoomCounter = 1;
}

void draw() {
  if (mouseClickCounter == 0) {
  background(#DBD1FF);
  textSize(55);
  fill(#09123D);
  text("Where we dropping?", 375,65);
  image(Map,375, 370);
  rect(375, 700, 200, 40, 20, 20, 20, 20);
  fill(255);
  textSize(20);
  text("Let's Go!", 375, 708);
  textSize(15);
  text("Click to Zoom", 585, 115);
  } else {
  fill(#09123D);
  background(#DBD1FF);
  rect(375, 300, 500,500);
  textSize(45);
  text(place[Choice],375, 620);
  image(Pic, 375, 300); 
  rect(250, 680, 220, 60, 20, 20, 20, 20);
  rect(500, 680, 220, 60, 20, 20, 20, 20);
  fill(255);
  textSize(30);
  text("Another", 250, 690);
  text("Back to Map", 500, 690);
  }
  
  // Cursor functionality
  if(mouseX > 275 && mouseX < 475 && mouseY > 680 && mouseY < 720 && mouseClickCounter == 0)   {
  cursor(HAND);
  } else if  (mouseX > 390 && mouseX < 710 && mouseY > 650 && mouseY < 710  && mouseClickCounter > 0) {
  cursor(HAND); 
  } else if (mouseX > 140 && mouseX < 360 && mouseY > 650 && mouseY < 710  && mouseClickCounter > 0) {
  cursor(HAND);
  } else if (mouseX > 100 && mouseX < 650 && mouseY > 100 && mouseY < 650  && mouseClickCounter == 0 && ZoomCounter % 2 == 0) {
  cursor(CROSS);
  c = get(mouseX, mouseY);
  Zoomer = Map.get(mouseX -128, mouseY -125, 50, 50);
  println(c);
  fill(c);
  rect(mouseX, mouseY, 100, 100, 10, 10, 10, 10);
  image(Zoomer, mouseX, mouseY, 100, 100);
} else {  
    cursor(ARROW);
  } 
}

void mousePressed() {
  if(mouseX > 275 && mouseX < 475 && mouseY > 680 && mouseY < 710 && mouseClickCounter == 0) {
  mouseClickCounter++;
    } else if (mouseX > 390 && mouseX < 710 && mouseY > 650 && mouseY < 710  && mouseClickCounter > 0) {
     Choice = int(random(place.length));
     Pic = loadImage(Pics[Choice]);
     mouseClickCounter = 0;
       } else if (mouseX > 140 && mouseX < 360 && mouseY > 650 && mouseY < 710  && mouseClickCounter > 0) {
       Choice = int(random(place.length));
       Pic = loadImage(Pics[Choice]);
       redraw();
          } else if (mouseX > 100 && mouseX < 650 && mouseY > 100 && mouseY < 650  && mouseClickCounter == 0) {
          ZoomCounter ++;
          println(ZoomCounter);
          }
          }
