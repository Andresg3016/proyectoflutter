import 'package:flutter/material.dart';

class PaginaUsers extends StatelessWidget {
  const PaginaUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text('Users Page', style: TextStyle(fontSize: 25))),
    );
  }
}
