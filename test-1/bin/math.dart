import 'dart:math';

class Book {
  int id;
  String title;
  String author;
  double price;

  Book(this.id, this.title, this.author, this.price);
}

class User {
  String username;
  List<Book> purchasedBooks = [];

  User(this.username);

  void purchaseBook(Book book) {
    purchasedBooks.add(book);
    print("$username purchased: ${book.title}");
  }

  void viewPurchasedBooks() {
    print("$username's Purchased Books:");
    for (var book in purchasedBooks) {
      print("${book.title} by ${book.author} - \$${book.price}");
    }
  }
}

class Bookstore {
  List<Book> books = [];

  Bookstore() {
    // Initialize the bookstore with some books
    books.add(Book(1, "The Dart Programming Language", "Google", 29.99));
    books.add(Book(2, "Effective Dart", "Google", 19.99));
    books.add(Book(3, "Dart: Up and Running", "Kathy Walrath", 24.99));
    // Add more books as needed
  }

  void displayBooks() {
    print("Available Books:");
    for (var book in books) {
      print("${book.title} by ${book.author} - \$${book.price}");
    }
  }

  Book getRandomBook() {
    final random = Random();
    return books[random.nextInt(books.length)];
  }
}

void main() {
  var bookstore = Bookstore();

  // Simulate user interactions
  var user1 = User("user1");
  var user2 = User("user2");

  user1.purchaseBook(bookstore.getRandomBook());
  user2.purchaseBook(bookstore.getRandomBook());
  user1.purchaseBook(bookstore.getRandomBook());

  user1.viewPurchasedBooks();
  user2.viewPurchasedBooks();

  bookstore.displayBooks();
}
