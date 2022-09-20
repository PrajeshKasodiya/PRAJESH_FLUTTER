class Student {
  // static method : which is contain only static member
  //there is no need to create object we can access directly using of class name

  static void display() {
    print(" this is static method ");
  }
}

void main() {
  Student.display();
}
