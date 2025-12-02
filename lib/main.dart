import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Flutter Scrum 3',
      home: Scaffold(
        appBar: AppBar(title: Text('Market Delivery')),
        body: Center(
          child: Container(
            child: Text(
              'Bienvenido a Market Delivery',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: "Users",
            ),
          ],
        ),
      ),
    );
  }
}
