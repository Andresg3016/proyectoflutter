import 'package:aplicacion/pages/PaginaHome.dart';
import 'package:aplicacion/pages/PaginaUsers.dart';
import 'package:aplicacion/pages/PaginaProductos.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    PaginaHome(),
    PaginaProductos(),
    PaginaUsers(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Flutter Scrum 3',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 247, 185, 0),
          title: Row(
            children: [
              Image.asset('assets/images/logo.jpg', height: 100),
              SizedBox(width: 10),
            ],
          ),
        ),
        body: _paginas[_paginaActual],
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
              label: "Usuarios",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Productos",
            ),
          ],
        ),
      ),
    );
  }
}
