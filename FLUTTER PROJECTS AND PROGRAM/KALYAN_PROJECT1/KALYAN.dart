import 'dart:io';

void main() {
  String Name, Gender, Item, Choice;
  double Gram,
      Gold_price,
      Gram_Gold_Price,
      TOTAL_AMOUNT,
      Gram_Making_charges,
      Total_Making_charges;
  int Age;
  Gram_Gold_Price = 4181;
  Gram_Making_charges = 580;
  bool status = true;

  while (status) {
    print("Enter Your Name :");
    Name = stdin.readLineSync()!;

    print("\nEnter Gender :");
    Gender = stdin.readLineSync()!;

    print("\nEnter Your Age :");
    Age = int.parse(stdin.readLineSync()!);

    print("\nGold items :");
    Item = stdin.readLineSync()!;

    print("\nGram :");
    Gram = double.parse(stdin.readLineSync()!);
    Gold_price = Gram * Gram_Gold_Price;
    Total_Making_charges = Gram * Gram_Making_charges;
    TOTAL_AMOUNT = Gold_price + Total_Making_charges;

    // for final invoice
    print("-----------------------------------------------------------------");
    print("                            INVOICE");
    print("-----------------------------------------------------------------");
    print("NAME : $Name");
    print("GENDER : $Gender");
    print("AGE : $Age");
    print("GOLD ITEM : $Item");
    print("GOLD QTY (GRAM) : $Gram");
    print("GOLD PRICE : $Gold_price\n");
    print("MAKING CHARGE : $Gram_Making_charges");
    print("TOTAL MAKING CHARGES : $Total_Making_charges");
    print("TOTAL AMOUNT : $TOTAL_AMOUNT");
    print("-----------------------------------");

    // for male discount
    if (Gender == "male") {
      //for 65 above
      if (Age > 65) {
        if (TOTAL_AMOUNT > 100000 && TOTAL_AMOUNT < 200000) {
          print("DESCOUNT : 10%");
          double DISCOUNT_10 = (TOTAL_AMOUNT * 10) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_10");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_10}");
        } else if (TOTAL_AMOUNT > 200000 && TOTAL_AMOUNT < 300000) {
          print("DESCOUNT : 20%");
          double DISCOUNT_20 = (TOTAL_AMOUNT * 20) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_20");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_20}");
        } else if (TOTAL_AMOUNT > 300000 && TOTAL_AMOUNT < 500000) {
          print("DESCOUNT : 35%");
          double DISCOUNT_35 = (TOTAL_AMOUNT * 35) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_35");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_35}");
        } else {
          print("DESCOUNT  :0%");
          print("DISCOUNT AMOUNT : 0");
          print("-----------------------------------");
          print("NET AMOUNT : $TOTAL_AMOUNT");
        }
        // for 65 below
      } else {
        if (TOTAL_AMOUNT > 100000 && TOTAL_AMOUNT < 200000) {
          print("DESCOUNT : 5%");
          double DISCOUNT_5 = (TOTAL_AMOUNT * 5) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_5");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_5}");
        } else if (TOTAL_AMOUNT > 200000 && TOTAL_AMOUNT < 300000) {
          print("DESCOUNT : 15%");
          double DISCOUNT_15 = (TOTAL_AMOUNT * 15) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_15");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_15}");
        } else if (TOTAL_AMOUNT > 300000 && TOTAL_AMOUNT < 500000) {
          print("DESCOUNT : 25%");
          double DISCOUNT_25 = (TOTAL_AMOUNT * 25) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_25");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_25}");
        } else {
          print("DESCOUNT  :0%");
          print("DISCOUNT AMOUNT : 0");
          print("-----------------------------------");
          print("NET AMOUNT : $TOTAL_AMOUNT");
        }
      }
      // for female discount
    } else {
      // for 65 above
      if (Age > 65) {
        if (TOTAL_AMOUNT > 100000 && TOTAL_AMOUNT < 200000) {
          print("DESCOUNT : 15%");
          double DISCOUNT_15 = (TOTAL_AMOUNT * 15) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_15");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_15}");
        } else if (TOTAL_AMOUNT > 200000 && TOTAL_AMOUNT < 300000) {
          print("DESCOUNT : 25%");
          double DISCOUNT_25 = (TOTAL_AMOUNT * 25) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_25");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_25}");
        } else if (TOTAL_AMOUNT > 300000 && TOTAL_AMOUNT < 500000) {
          print("DESCOUNT : 38%");
          double DISCOUNT_38 = (TOTAL_AMOUNT * 38) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_38");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_38}");
        } else {
          print("DESCOUNT  :0%");
          print("DISCOUNT AMOUNT : 0");
          print("-----------------------------------");
          print("NET AMOUNT : $TOTAL_AMOUNT");
        }
        // for 65 below
      } else {
        if (TOTAL_AMOUNT > 100000 && TOTAL_AMOUNT < 200000) {
          print("DESCOUNT : 10%");
          double DISCOUNT_10 = (TOTAL_AMOUNT * 10) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_10");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_10}");
        } else if (TOTAL_AMOUNT > 200000 && TOTAL_AMOUNT < 300000) {
          print("DESCOUNT : 20%");
          double DISCOUNT_20 = (TOTAL_AMOUNT * 20) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_20");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_20}");
        } else if (TOTAL_AMOUNT > 300000 && TOTAL_AMOUNT < 500000) {
          print("DESCOUNT : 35%");
          double DISCOUNT_35 = (TOTAL_AMOUNT * 35) / 100;
          print("DISCOUNT AMOUNT : $DISCOUNT_35");
          print("-----------------------------------");
          print("NET AMOUNT : ${TOTAL_AMOUNT - DISCOUNT_35}");
        } else {
          print("DESCOUNT  :0%");
          print("DISCOUNT AMOUNT : 0");
          print("-----------------------------------");
          print("NET AMOUNT : $TOTAL_AMOUNT");
        }
      }
    }

    print(
        "\ndo you want to perform more operation : press y for yes and n for no:");
    Choice = stdin.readLineSync()!;
    if (Choice == 'y') {
      status = true;
    } else {
      status = false;
    }
  }
}
