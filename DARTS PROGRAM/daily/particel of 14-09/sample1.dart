class sample {
  // data member
  int num = 10;
  String name = "prajesh";

  // member function
  void display() {
    print("flutter");
  }

  void dart() {
    print("dart");
  }

  void android() {
    print("android");
  }

  void daily() {
    print("num = $num");
    print("name = $name");
  }
}

void main() {
  var obj = new sample();
  obj.display();
  obj.dart();
  obj.android();
  obj.daily();
}
