import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi formulario alumno'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Formulario de alumno'),
              SizedBox(height: 20, child: Text('Guillermo')),
              SizedBox(height: 20, child: Text('Anderson')),
              ElevatedButton(onPressed: () => {}, child: const Text('Guardar')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                    label: const Text('Icon1'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.abc_sharp),
                    label: const Text('Icon2'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.bed),
                    label: const Text('Icon3'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.list),
                    label: const Text('Icon4'),
                  ),
                ],
              ),
              Text('Esta es mi imagen'),
              Image.network(
                width: 200,
                height: 200,
                "https://www.speedrun.com/static/game/m1zw7x10/cover.png?v=9cbdfdc",
                webHtmlElementStrategy: WebHtmlElementStrategy.prefer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
