import 'package:flutter/material.dart';

class Usuario {
  final int id;
  final String nombre;
  final String email;
  final String rol;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.rol,
  });
}

class PaginaUsers extends StatelessWidget {
  const PaginaUsers({Key? key}) : super(key: key);

  static final List<Usuario> usuarios = [
    Usuario(
      id: 1,
      nombre: 'Carlos Grisales',
      email: 'Carlos.Grisales@example.com',
      rol: 'Desarrollador',
    ),
    Usuario(
      id: 2,
      nombre: 'William Morales',
      email: 'William.Morales@example.com',
      rol: 'Desarrollador',
    ),
    Usuario(
      id: 3,
      nombre: 'Julian Lancheros',
      email: 'Julian.Lancheros@example.com',
      rol: 'Desarrollador',
    ),
    Usuario(
      id: 4,
      nombre: 'Anderson Serén',
      email: 'Anderon.Seren@example.com',
      rol: 'Diseñador ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          final usuario = usuarios[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(
                radius: 30,
                child: Text(
                  usuario.nombre[0].toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              title: Text(
                usuario.nombre,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    usuario.email,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      usuario.rol,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey[400],
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Perfil de ${usuario.nombre}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
