import 'package:flutter/material.dart';

import 'package:exam_1/themes/theme.dart';

class ProductDetailsState extends StatefulWidget {
  const ProductDetailsState({super.key});

  @override
  State<ProductDetailsState> createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetailsState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      home: Scaffold(
        appBar: AppBar(title: const Text("Detalle del producto")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<dynamic>(
                future: null,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  final details = snapshot.data;

                  return Column(
                    children: [
                      Text(details['title']),
                      Image.network(details['image']),
                      Text(details['description']),
                      Text("Precio: " + details['price']),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text("Agregar"),
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text("Eliminar"),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
