import 'package:flutter/material.dart';
import 'dados.dart';

class ClientesPage extends StatelessWidget {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Clientes'),
        centerTitle: true,
      ),
      body: clientes.isEmpty
          ? const Center(
              child: Text(
                'Nenhum cliente cadastrado.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: clientes.length,
              itemBuilder: (context, index) {
                final cliente = clientes[index];

                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(cliente['nome']!),
                    subtitle: Text(
                      'Cidade: ${cliente['cidade']}',
                    ),
                  ),
                );
              },
            ),
    );
  }
}