import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// flutter funciona siendo una cebolla de widgets, es decir, es widget sobre widget, sobre widget
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyAppExt());
  }
}

class MyAppExt extends StatefulWidget {
  const MyAppExt({super.key});

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  String buttonName = "click";
  int currentIndex = 0;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tusa'),
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white, primary: Colors.orange),
                      onPressed: () {
                        //print('Imprimeme argo illooooo');
                        setState(() {
                          buttonName = 'Tía Paola';
                        });
                      },
                      child: Text(buttonName),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white, primary: Colors.orange),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const SigPag(),
                          ),
                        );
                      },
                      child: Text('Siguiente página'),
                    )
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isClicked = !_isClicked;
                  });
                },
                child: _isClicked
                    ? Image.asset('images/permatrago.jpg')
                    : Image.network(
                        'https://media.tenor.com/x8v1oNUOmg4AAAAd/rickroll-roll.gif'),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 107, 189),
                size: 24.0,
              )),
          const BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.settings))
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    ); //el scaffold monta el esqueleto de la app de flutter;
  }
}

class SigPag extends StatelessWidget {
  const SigPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
