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
