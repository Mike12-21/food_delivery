import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/delivery_progress_page.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

import '../models/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Are you sure'),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),

                        //yes
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                            Provider.of<CartProvider>(context, listen: false)
                                .removeItem();
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete_sweep),
              )
            ],
          ),
          body: Column(
            children: [
              //list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Cart is empty "),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];
                                  // return the cart tile
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          ),
                  ],
                ),
              ),
              MyButton(
                text: 'Pay on delivery',
                onTap: () {
                  // Check if the cart is empty
                  if (userCart.isEmpty) {
                    // Show a dialog box when the cart is empty
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('No Items'),
                        content: const Text('There are no items in the cart.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Close the dialog
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Navigate to DeliveryProgressPage when there are items
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryProgressPage(),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              //button to pay
              MyButton(
                text: 'Checkout',
                onTap: () {
                  // Check if the cart is empty
                  if (userCart.isEmpty) {
                    // Show a dialog box when the cart is empty
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('No Items'),
                        content: const Text('There are no items in the cart.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Close the dialog
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Navigate to PaymentPage when there are items
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
