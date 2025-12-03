import 'package:aplicacion/pages/PaginaHome.dart';
import 'package:aplicacion/pages/PaginaUsers.dart';
import 'package:aplicacion/pages/PaginaProductos.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;

  final List<Widget> _paginas = [
    PaginaHome(),
    PaginaUsers(),
    PaginaProductos(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 247, 185, 0),
          title: Text('Market Delivery', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
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
