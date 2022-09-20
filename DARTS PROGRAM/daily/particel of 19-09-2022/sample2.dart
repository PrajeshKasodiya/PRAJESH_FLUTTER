class Student {
  int? num1 = 10; //instance variable - it can only access with object

  static int num3 = 101;
  void display() {
    int? num2 = 20; // local variable
    print("num2 = $num2");
  }
}

void main() {
  var obj = new Student();
  // accessing local variable
  obj.display();

  //access instance variable
  print("num1 = ${obj.num1}");

  //static variable : no need to use object here , only clss name required
  print("static variable : ${Student.num3}");
}
