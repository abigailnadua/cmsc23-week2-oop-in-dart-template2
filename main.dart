/*
NOTE: Please make sure NOT TO MAKE ANY CHANGES IN THIS FILE.
You can only edit this file when changing the values of the arguments.
Any changes to the logic of the program should be done in their respective program files.
Make sure to create the appropriate folders or filenames to ensure that the main program works.
*/

import 'books/books.dart';
import 'borrowers/borrowers.dart';

void main() {
  // instantiate two guest borrowers with different wallet contents
  Guest guest1 = Guest(1000);
  Guest guest2 = Guest(500);

  // instantiate two vips with different wallet contents
  VipMember vip1 = VipMember(700);
  VipMember vip2 = VipMember(600);

  // instantiate 5 regular books with different names and prices
  Regular regular1 = Regular(100);
  Regular regular2 = Regular(70);
  Regular regular3 = Regular(85);
  Regular regular4 = Regular(75);
  Regular regular5 = Regular(50);

  // instantiate 3 special edition books with different names prices
  Special special1 = Special(200);
  Special special2 = Special(350);
  Special special3 = Special(550);

  // ==============================================================

  print("\n || DAY 1 TRANSACTIONS ||\n");
  guest1.borrowBook(regular3);
  guest1.borrowBook(regular2);
  vip2.reserveBook(special2);
  vip1.borrowBook(regular1);
  guest2.borrowBook(regular5);

  // ==============================================================

  print("\n || DAY 2 TRANSACTIONS ||\n");
  guest1.borrowBook(special1);
  guest2.borrowBook(special2);
  vip1.reserveBook(regular4);
  vip1.returnBook(regular1);
  vip2.returnBook(regular5);
  guest1.returnBook(special1);

  // ==============================================================

  print("\n || DAY 3 TRANSACTIONS ||\n");
  vip2.borrowBook(special1);
  vip2.borrowBook(special2);
  guest2.borrowBook(special3);
  guest2.returnBook(special2);
  vip2.reserveBook(regular4);

  // ==============================================================

  print("\n || ALL BORROWERS' TRANSACTIONS ||\n");
  guest1.printTransactions();
  guest2.printTransactions();
  vip1.printTransactions();
  vip2.printTransactions();

  // ==============================================================

  print("\n || CURRENTLY BORROWED BOOKS ||\n");
  guest1.printBorrowedBooks();
  guest2.printBorrowedBooks();
  vip1.printBorrowedBooks();
  vip2.printBorrowedBooks();
}
