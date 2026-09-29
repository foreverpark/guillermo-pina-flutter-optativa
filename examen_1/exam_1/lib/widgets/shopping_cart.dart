import 'package:flutter/material.dart';

class ShoppingCarts extends StatefulWidget {
  const ShoppingCarts({super.key});

  @override
  State<ShoppingCarts> createState() => _ShoppingCart();
}

class _ShoppingCart extends State<ShoppingCarts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carritos de compra")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<dynamic>>(
              future: null,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                final shoppingCarts = snapshot.data ?? [];

                return ListView.builder(
                  itemCount: shoppingCarts.length,
                  itemBuilder: (context, index) {
                    final shoppingCart = shoppingCarts[index];
                    return ListTile(
                      title: Text(shoppingCart['userId']),
                      subtitle: Text("Click para ver más detalles"),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
