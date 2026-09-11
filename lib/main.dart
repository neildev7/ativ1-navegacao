import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ListaFuncionarios(),
    );
  }
}

class ListaFuncionarios extends StatelessWidget {
  const ListaFuncionarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funcionários'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('João Ligabo'),
              subtitle: Text('Desenvolvedor'),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Glória Maria'),
              subtitle: Text('Designer'),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Andreza Quintas'),
              subtitle: Text('Analista de Sistemas'),
            ),
          ),
        ],
      ),
    );
  }
}