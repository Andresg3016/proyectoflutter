import 'package:flutter/material.dart';

class PaginaProductos extends StatefulWidget {
  const PaginaProductos({Key? key}) : super(key: key);

  @override
  State<PaginaProductos> createState() => _PaginaProductosState();
}

class _PaginaProductosState extends State<PaginaProductos> {
  final List<String> _productos = ['Manzana', 'Pan', 'Leche', 'Huevos'];
  String? _productoSeleccionado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.shopping_cart, size: 100, color: Colors.green),
          SizedBox(height: 20),
          Text(
            'Pagina de Productos',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Aquí puedes ver todos los productos disponibles',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),

          // Dropdown
          Text('Selecciona un producto:', style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: _productoSeleccionado,
                hint: Text('Selecciona...'),
                items: _productos
                    .map(
                      (p) => DropdownMenuItem<String>(value: p, child: Text(p)),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _productoSeleccionado = value;
                  });
                },
              ),
            ),
          ),

          SizedBox(height: 20),
          if (_productoSeleccionado != null)
            Center(
              child: Text(
                'Producto seleccionado: $_productoSeleccionado',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
        ],
      ),
    );
  }
}
