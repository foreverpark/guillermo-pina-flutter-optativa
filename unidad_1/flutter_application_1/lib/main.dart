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
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text('Guardar'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                  ),
                ],
              ),
              Text('Esta es mi imagen'),
              Image.network(
                width: 200,
                height: 200,
                "https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixid=M3w4MjcwNjd8MHwxfHNlYXJjaHwxfHxhbmltYWxzfGVufDB8fHx8MTc4NzYxNTg1Nnww&ixlib=rb-4.1.0&fit=max&q=80",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
