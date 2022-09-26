// Getter setter
class sample {
  int? id;
  void setID(int? id) {
    this.id = id; // set id
  }

  int? getID() {
    return id;
  }
}

void main() {
  var obj = sample();
  obj.setID(101);
  print(obj.getID());
}
