/*  
 q-12. Write a Program to check the given number is prime or not prime.
*/

import 'dart:io';

// bool isPrime(N) {
//   for (var i = 2; i <= N / i; ++i) {
//     if (N % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }

void main() {
  print("Enter of value N");
  int N = int.parse(stdin.readLineSync()!);

  if (N % 2 == 0) {
    print("this is prime number");
  } else {
    print("this is not prime number");
  }
}

// this program is not working completely 