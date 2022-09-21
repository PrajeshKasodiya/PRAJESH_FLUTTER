class A {
  a() {
    print("class a constructor");
  }

  void displayA() {
    print("A class display");
  }
}

class B extends A {
  void displayB() {
    print("B class display");
  }
}

class c extends B {
  void displayc() {
    print("c class display");
  }
}

void main() {
  var obj = new c();
  obj.displayA();
  obj.displayB();
  obj.displayc();
}
