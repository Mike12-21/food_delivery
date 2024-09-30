import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burgers
    Food(
      name: 'Cheese Burger',
      description:
          'A juicy beef patty topped with melted cheese, nestled in a toasted bun with crisp lettuce and tangy pickles.',
      imagePath: 'lib/images/burgers/cheeseburger1.png',
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50),
        Addon(name: 'Ketchup', price: 30.0)
      ],
    ),
    Food(
      name: 'Chicken Burger',
      description:
          'A succulent grilled chicken breast sandwiched between soft buns with crisp lettuce, ripe tomatoes, and creamy mayo.',
      imagePath: 'lib/images/burgers/chickenburgerr.png',
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50),
        Addon(name: 'Ketchup', price: 30.0)
      ],
    ),
    Food(
      name: 'Double Burger',
      description:
          'Two juicy beef patties stacked with melted cheese, crispy bacon, fresh lettuce, and tangy pickles on a toasted sesame seed bun.',
      imagePath: 'lib/images/burgers/cheeseburger1.png',
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50),
        Addon(name: 'Ketchup', price: 30.0)
      ],
    ),
    Food(
      name: 'Special Burger',
      description:
          'An Ethiopian-inspired special burger with a berbere-spiced lamb patty, creamy niter kibbeh aioli, pickled vegetables, and a spicy mitmita sauce on a teff flour bun, capturing the flavors of Ethiopia.',
      imagePath: 'lib/images/burgers/specialburger.png',
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50.0),
        Addon(name: 'Ketchup', price: 30.0)
      ],
    ),
    Food(
      name: 'BBQ Burger',
      description:
          'A smoky BBQ burger featuring a flame-grilled patty, topped with caramelized onions, melted cheddar cheese, and a drizzle of tangy barbecue sauce.',
      imagePath: 'lib/images/burgers/bbqburger1.png',
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50.0),
        Addon(name: 'Grilled onion', price: 40.0)
      ],
    ),
    //Desserts
    Food(
      name: 'Black Forest',
      description:
          'A rich chocolate cake layered with whipped cream, cherries, and dark chocolate shavings.',
      imagePath: 'lib/images/desserts/blackforest.png',
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 50),
        Addon(name: 'Ketchup', price: 30.0)
      ],
    ),
    Food(
      name: 'Chocolate cake',
      description:
          'A moist and decadent chocolate cake layered with rich chocolate frosting.',
      imagePath: 'lib/images/desserts/chocolatecake.png',
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'whipped creame', price: 50),
      ],
    ),
    Food(
      name: 'Cupcake',
      description:
          'A single-serving, frosted mini cake baked in a paper cup, often topped with decorative icing or sprinkles.',
      imagePath: 'lib/images/desserts/cupcake.png',
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'whipped creame', price: 50),
      ],
    ),
    Food(
      name: 'Donut',
      description:
          'A golden, fried ring of dough, often glazed or filled with various sweet toppings or creams.',
      imagePath: 'lib/images/desserts/donut1.png',
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'whipped creame', price: 50),
      ],
    ),
    Food(
      name: 'White Forest',
      description:
          'A classic cake with layers of vanilla sponge, whipped cream, cherries, and white chocolate.',
      imagePath: 'lib/images/desserts/whiteforest.png',
      price: 250,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'whipped creame', price: 50),
      ],
    ),
    //Drinks
    Food(
      name: 'Boba tea',
      description:
          'A refreshing Filipino-inspired drink combining the flavors of traditional boba tea with tropical hints like coconut or mango.',
      imagePath: 'lib/images/drinks/bobatea.png',
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: ' Extra boba', price: 30),
        Addon(name: ' whipped creame', price: 30),
      ],
    ),
    Food(
      name: 'Iced tea',
      description:
          'A chilled tea beverage sweetened and served with ice, offering a refreshing and flavorful drink option.',
      imagePath: 'lib/images/drinks/iced tea.png',
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'whipped creame', price: 30),
      ],
    ),
    Food(
      name: 'Iced coffee',
      description:
          'Chilled coffee served over ice, providing a cool and caffeinated pick-me-up.',
      imagePath: 'lib/images/drinks/icedcoffee.png',
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'whipped creame', price: 30),
      ],
    ),
    Food(
      name: 'Cocacola',
      description:
          'A carbonated soft drink with a sweet and fizzy flavor, known for its iconic red label and refreshing taste.',
      imagePath: 'lib/images/drinks/cocacola.png',
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: '----', price: 0),
      ],
    ),
    Food(
      name: 'Softdrinks',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/drinks/softdrinks.png',
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: '----', price: 0),
      ],
    ),
    //Localfoods
    Food(
      name: 'Doro wot',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/localfoods/dorowot.jpg',
      price: 250,
      category: FoodCategory.localFoods,
      availableAddons: [
        Addon(name: 'injera kurt 4 pcs', price: 30.0),
      ],
    ),
    Food(
      name: 'Ye Fisek beyaynet',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/localfoods/fisekbeyaynet.jpg',
      price: 250,
      category: FoodCategory.localFoods,
      availableAddons: [
        Addon(name: 'injera kurt 4 pcs', price: 30.0),
      ],
    ),
    Food(
      name: 'Kitfo',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/localfoods/kitfo.jpg',
      price: 250,
      category: FoodCategory.localFoods,
      availableAddons: [
        Addon(name: 'injera kurt 4 pcs', price: 30.0),
      ],
    ),
    Food(
      name: 'Tibs',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/localfoods/tibs.jpg',
      price: 250,
      category: FoodCategory.localFoods,
      availableAddons: [
        Addon(name: 'injera kurt 4 pcs', price: 30.0),
      ],
    ),
    Food(
      name: 'Ye Tsom beyaynet',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/localfoods/yetsombeyaynet.jpg',
      price: 250,
      category: FoodCategory.localFoods,
      availableAddons: [
        Addon(name: 'injera kurt 4 pcs', price: 30.0),
      ],
    ),
    //Salads
    Food(
      name: 'Chopped Salad',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/salads/chopped salad.png',
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: '----', price: 0),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/salads/fruitsalad.png',
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: '---', price: 0),
      ],
    ),
    Food(
      name: 'Grain Salad',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/salads/grainsalad.png',
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: '----', price: 0),
      ],
    ),
    Food(
      name: 'Pasta Salad',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/salads/pastasalad.png',
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: '----', price: 30.0),
      ],
    ),
    Food(
      name: 'Potato Salad',
      description:
          'Carbonated beverages typically sweetened with sugar or artificial sweeteners, offering a wide range of flavors and refreshment.',
      imagePath: 'lib/images/salads/potatosalad.png',
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: '---', price: 0),
      ],
    ),
  ];

  //GETTERS

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // OPERATIONS
  //user cart
  final List<CartItem> _cart = [];
  // add to cart+
  void addToCart(Food food, List<Addon> selectedAddon) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddon);

      return isSameFood && isSameAddons;
    });

    //if item exist increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddon,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get the total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get the total number of the cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  //HELPERS
  // generate a reciept
  // format double value into money
  // format list of addons into a string summary
}
