import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// flutter funciona siendo una cebolla de widgets, es decir, es widget sobre widget, sobre widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tusa'),
        ),
        body: Center(child: const Text('data')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            const BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Colors.pink,
                  size: 24.0,
                )),
            const BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings))
          ],
        ),
      ), //el scaffold monta el esqueleto de la app de flutter
    );
  }
}
