class Location {
String[] place = {"Dam", "Military Base", "Quarry", "Airport", "TV Station", "Storage Town", "Superstore", "Stadium", "Lumber", "Farmland", "Boneyard", "Train Station", "Hospital", "Downtown", "Farmland", "Promenade West", "Promenade East", "Hills", "Park", "Port", "Prison"};
String Local;
  
  Location(){ 
  }
  Location(String tempLocal) {
  Local = tempLocal;
  }
  
  String RandomLocation() {
    return place[int(random(place.length))];
  }
  
}
