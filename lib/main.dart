import 'package:flutter/material.dart';

import 'button_vw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Button Types',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const Buttons.ButtonTypes());
  }
}

class Buttons extends StatelessWidget {
  const Buttons.ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal, title: const Text('Button Types')),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button 1')),
            const SizedBox(height: 20),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.yellow, width: 5)),
                onPressed: () {},
                child: const Text('Outlined Button 2')),
            const SizedBox(height: 20),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Outlined Button with Icon')),
            const SizedBox(height: 20),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(300, 100),
                    foregroundColor: Colors.amber,
                    backgroundColor: Colors.red,
                    side: const BorderSide(color: Colors.amber, width: 5)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ElevatedButtonExampleApp()));
                },
                icon: const Icon(Icons.delete),
                label: const Text(
                  'Delete',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
