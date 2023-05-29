import 'dart:io';

class Product {
  String id;
  String name;
  double rate;
  int quantity;

  Product(this.id, this.name, this.rate, this.quantity);
}

class Cart {
  List<Product> items = [];

  void addToCart(Product product) {
    items.add(product);
    print('${product.name} added to cart.');
  }

  void removeFromCart(Product product) {
    items.remove(product);
    print('${product.name} removed from cart.');
  }

  void displayCart() {
    if (items.isEmpty) {
      print('Your cart is empty.');
    } else {
      print('Products in your cart:');
      for (var product in items) {
        print('ID: ${product.id}');
        print('Name: ${product.name}');
        print('Rate: \$${product.rate}');
        print('Quantity: ${product.quantity}');
        print('-------------------------');
      }
    }
  }

  double calculateTotalAmount() {
    double total = 0;
    for (var product in items) {
      total += (product.rate * product.quantity);
    }
    return total;
  }
}

void main() {
  // Sample products
  List<Product> products = [
    Product('1', 'Product 1', 10.0, 5),
    Product('2', 'Product 2', 15.0, 8),
    Product('3', 'Product 3', 20.0, 3),
  ];

  // Login
  print('Login');
  print('Enter your username:');
  String username = stdin.readLineSync()!;
  print('Enter your password:');
  String password = stdin.readLineSync()!;

  // Check login credentials
  if (username == 'admin' && password == 'password') {
    print('Login successful.');
    Cart cart = Cart();

    // Display products
    print('\nProducts:');
    for (var product in products) {
      print('ID: ${product.id}');
      print('Name: ${product.name}');
      print('Rate: \$${product.rate}');
      print('Quantity: ${product.quantity}');
      print('-------------------------');
    }

    // Product selection
    print('\nEnter the ID of the product to add it to cart (or "q" to quit):');
    String? productId = stdin.readLineSync();

    while (productId != 'q') {
      var selectedProduct = products.firstWhere((product) => product.id == productId);
      cart.addToCart(selectedProduct);

      print('\nEnter the ID of the product to add it to cart (or "q" to quit):');
      productId = stdin.readLineSync();
    }

    // Display cart
    print('\nYour cart:');
    cart.displayCart();

    // Remove from cart
    print('\nEnter the ID of the product to remove from cart (or "q" to quit):');
    productId = stdin.readLineSync();

    while (productId != 'q') {
      var selectedProduct = products.firstWhere((product) => product.id == productId);
      cart.removeFromCart(selectedProduct);

      print('\nEnter the ID of the product to remove from cart (or "q" to quit):');
      productId = stdin.readLineSync();
    }

    // Display updated cart
    print('\nYour updated cart:');
    cart.displayCart();

    // Calculate total amount
    double totalAmount = cart.calculateTotalAmount();
    print('\nTotal');
  }
}