import 'dart:io';

void main() {
  List<String> cart = [];
  login();
  while (true) {
    print('\n1. Add to cart');
    print('2. Remove from cart');
    print('3. View cart');
    print('4. Proceed to payment');
    print('5. Exit\n\n');
    stdout.write('Select an option: ');
    String option = stdin.readLineSync()!;
    
    switch (option) {
      case '1':
        stdout.write('Enter product name: ');
        String newprod = stdin.readLineSync()!;
        cart.add(newprod);
        print('$newprod added to the cart.');
        break;
      case '2':
        stdout.write('Enter the name of the product to remove: ');
        String productName = stdin.readLineSync()!;
        if (cart.remove(productName)) {
          print('$productName removed from the cart.');
        } else {
          print('$productName is not in the cart.');
        }
        break;
      case '3':
        if (cart.isEmpty) {
          print('Your cart is empty.');
        } else {
          print('cart:');
          for (var item in cart) {
            print('- $item');
          }
        }
        break;
      case '4':
        print('Payment processing');
        print('your payment is successful');
        print('Thank you for your purchase');
        break;
      case '5':
        print('Exiting App');
        return;
      default:
        print('Select a given option.');
    }
  }
}

void login() {
  stdout.write('Enter your username: ');
  String username = stdin.readLineSync()!;
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  if (username == 'admin' && password == 'password') {
    print('Login successful.');
    print('\n\nWelcome');
  } else {
    print('Invalid credentials.');
    print('Login failed. Exiting the app.');
    return;
  }
  
}