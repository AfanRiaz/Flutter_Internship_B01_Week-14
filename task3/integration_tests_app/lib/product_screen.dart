import 'package:flutter/material.dart';
import 'checkout_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  int cartItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),

      body: Column(
        children: [

          Text(
            "Cart: $cartItems",
            key: const Key("cartCount"),
          ),

          ElevatedButton(
            key: const Key("addCart"),
            onPressed: () {
              setState(() {
                cartItems++;
              });
            },
            child: const Text("Add To Cart"),
          ),

          ElevatedButton(
            key: const Key("checkout"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CheckoutScreen(),
                ),
              );
            },
            child: const Text("Checkout"),
          ),
        ],
      ),
    );
  }
}