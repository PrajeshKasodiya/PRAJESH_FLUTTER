import 'dart:io';

void main() {
  print("please press y for start quiz");
  String? start;
  start = stdin.readLineSync()!;
  if (start == 'y') {
    nextquestion();
  } else {
    print("sorry you not press y for start quiz");
    nextquestion();
  }
  print("Thank You");
}

void nextquestion() {
  question1();
  question2();
  question3();
  question4();
  question5();
  question6();
  question7();
  question7();
  question8();
  question9();
  question10();
}

void question1() {
  print("q-1 Danny had a freckled nose and the colour of his eyes was\n"
      "(a) grey\n"
      "(b) green\n"
      "(c) blue\n"
      "(d) brown\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'b') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question2() {
  print("q-2 Outside the pub, Sophie saw something. It was\n"
      "(a) her dad’s bicycle\n"
      "(b) her brother’s car\n"
      "(c) her mother’s motorcycle\n"
      "(d) Derek’s tricycle\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'a') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question3() {
  print("q-3 While Sophie waited for Danny, she realized that\n"
      "(a) Danny would come\n"
      "(b) Danny would not come\n"
      "(c) she was hungry\n"
      "(d) she was thirsty\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'b') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question4() {
  print("q-4 According to Sophie, the place she had chosen to meet Danny was\n"
      "(a) a hidden alley\n"
      "(b) a perfect place\n"
      "(c) behind the walls\n"
      "(d) near the trees\n ");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'c') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question5() {
  print(
      "q-5 Sophie told Jansie that her father if he got to know about her    meeting with Danny would\n"
      "(a) agree to their marriage\n"
      "(b) murder her\n"
      "(c) ask her to call him over for dinner\n"
      "(d) ask to be introduced to him\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'b') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question6() {
  print("q-6 Geoff had told about Sophie’s meeting with Danny Casey to\n"
      "(a) the entire neighbourhood\n"
      "(b) Frank\n"
      "(c) Jansie\n"
      "(d) the teachers in school\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'b') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question7() {
  print(
      "q-7 ‘I wish he was an Englishman’. These words were spoken with reference to\n"
      "(a) Geoff\n"
      "(b) Derek\n"
      "(c) Danny Casey\n"
      "(d) a passenger in the bus\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'd') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question8() {
  print("q-8 The match on Saturday was witnessed by\n"
      "(a) the whole family\n"
      "(b) only father and Sophie\n"
      "(c) Geoff alone\n"
      "(d) Sophie, father, Derek and Geoff\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'd') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question9() {
  print("q-9 Danny Casey was a player in the football team of\n"
      "(a) Ireland\n"
      "(b) Finland\n"
      "(c) England\n"
      "(d) Denmark\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'a') {
    print("your answer is right\n");
  } else {
    print("your answer is wrong\n");
  }
}

void question10() {
  print(
      " q-10 Sophie told Geoff that Danny was unable to sign an autograph for her because\n"
      "(a) his secretary did not allow it\n"
      "(b) he didn’t have paper or pen\n"
      "(c) he said he’d do it later\n"
      "(d) he was in a hurry to go home\n");
  String? Choose;
  print("Please choose the option");
  Choose = stdin.readLineSync()!;
  if (Choose == 'b') {
    print("your answer is right");
  } else {
    print("your answer is wrong\n");
  }
}
