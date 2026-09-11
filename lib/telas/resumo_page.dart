import 'package:flutter/material.dart';
import 'home_page.dart';

class ResumoPage extends StatelessWidget {
  final String nome;
  final String cidade;

  const ResumoPage({
    super.key,
    required this.nome,
    required this.cidade,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.check_circle,
              size: 80,
            ),

            const SizedBox(height: 15),

            const Text(
              'Cadastro realizado com sucesso!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Nome'),
                    subtitle: Text(nome),
                  ),

                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.location_city),
                    title: const Text('Cidade'),
                    subtitle: Text(cidade),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text('Voltar para o início'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}