import 'package:flutter/material.dart';
import 'package:exam_1/themes/theme.dart';
import 'package:exam_1/widgets/shopping_cart.dart';
import 'package:exam_1/widgets/navigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              "TIENDA EXAMEN",
              style: TextStyle(
                color: AppTheme.themeData.primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Usuario / Correo",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigatorBar()),
                );
              },
              child: Text("Aceptar"),
            ),
          ],
        ),
      ),
    );
  }
}
