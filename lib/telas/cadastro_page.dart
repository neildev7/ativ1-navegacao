import 'package:flutter/material.dart';
import 'resumo_page.dart';
import 'dados.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();

  void cadastrar() {
    String nome = nomeController.text.trim();
    String cidade = cidadeController.text.trim();

    if (nome.isEmpty || cidade.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha todos os campos!'),
        ),
      );
      return;
    }

    clientes.add({
      'nome': nome,
      'cidade': cidade,
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResumoPage(
          nome: nome,
          cidade: cidade,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nomeController.dispose();
    cidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Cadastro de Cliente',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: cidadeController,
              decoration: const InputDecoration(
                labelText: 'Cidade',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.location_city),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: cadastrar,
                child: const Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}