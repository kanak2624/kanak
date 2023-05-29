import 'dart:io';

void main() {
  final Map<int, Map<String, dynamic>> products = {
    1: {'name': 'Product A', 'rate': 10.99, 'qty': 5},
    2: {'name': 'Product B', 'rate': 15.99, 'qty': 10},
    3: {'name': 'Product C', 'rate': 8.99, 'qty': 3},
  };

  String username = 'admin';
  String password = 'password';
  bool isLoggedIn = false;

  print('----- Login -----');
  while (!isLoggedIn) {
    stdout.write('Enter username: ');
    String inputUsername = stdin.readLineSync()!;
    stdout.write('Enter password: ');
    String inputPassword = stdin.readLineSync()!;

    if (inputUsername == username && inputPassword == password) {
      isLoggedIn = true;
    } else {
      print('Invalid credentials. Please try again.\n');
    }
  }

  print('\n----- Products -----');
  showProducts(products);

  List<int> cart = [];

  bool shopping = true;
  while (shopping) {
    print('\n----- Menu -----');
    print('1. Add to Cart');
    print('2. Remove from Cart');
    print('3. Make Payment');
    print('4. Exit');

    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('\n----- Add to Cart -----');
        stdout.write('Enter the product ID to add: ');
        int productId = int.parse(stdin.readLineSync()!);
        addToCart(productId, cart, products);
        break;

      case '2':
        print('\n----- Remove from Cart -----');
        stdout.write('Enter the product ID to remove: ');
        int productId = int.parse(stdin.readLineSync()!);
        removeFromCart(productId, cart);
        break;

      case '3':
        print('\n----- Make Payment -----');
        makePayment(cart, products);
        shopping = false;
        break;

      case '4':
        print('\nThank you for using our application!');
        shopping = false;
        break;

      default:
        print('\nInvalid choice. Please try again.');
    }
  }
}

void showProducts(Map<int, Map<String, dynamic>> products) {
  products.forEach((key, value) {
    print('ID: $key');
    print('Name: ${value['name']}');
    print('Rate: \$${value['rate']}');
    print('Qty: ${value['qty']}');
    print('----------------------------');
  });
}

void addToCart(int productId, List<int> cart, Map<int, Map<String, dynamic>> products) {
  if (products.containsKey(productId)) {
    cart.add(productId);
    print('Product added to the cart.\n');
  } else {
    print('Invalid product ID. Please try again.\n');
  }
}

void removeFromCart(int productId, List<int> cart) {
  if (cart.contains(productId)) {
    cart.remove(productId);
    print('Product removed from the cart.\n');
  } else {
    print('Product not found in the cart. Please try again.\n');
  }
}

void makePayment(List<int> cart, Map<int, Map<String, dynamic>> products) {
  double totalAmount = 0;

  if (cart.isEmpty) {
    print('\nTotal');
  }
}