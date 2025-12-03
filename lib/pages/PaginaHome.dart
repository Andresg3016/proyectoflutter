import 'package:flutter/material.dart';

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: SearchBar(hintText: 'Buscar...'),
          ),

          // 👇 Aquí agregamos el Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.star),
                Expanded(
                  child: Text(
                    'Este texto ocupará todo el ancho posible',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),

          Expanded(
            child: Center(
              child: Text('Home Page', style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}
