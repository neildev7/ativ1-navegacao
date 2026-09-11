import 'package:flutter/material.dart';
import 'cadastro_page.dart';
import 'login_page.dart';
import 'clientes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 60,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sistema de Cadastro',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text('Cadastrar'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CadastroPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Bem-vindo!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Escolha uma opção:',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 25),

          Card(
            child: ListTile(
              leading: const Icon(
                Icons.person_add,
                size: 35,
              ),
              title: const Text('Cadastrar Cliente'),
              subtitle: const Text('Realizar um novo cadastro'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CadastroPage(),
                  ),
                );
              },
            ),
          ),

          Card(
  child: ListTile(
    leading: const Icon(
      Icons.people,
      size: 35,
    ),
    title: const Text('Clientes'),
    subtitle: const Text('Visualizar clientes cadastrados'),
    trailing: const Icon(Icons.arrow_forward_ios),

    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ClientesPage(),
        ),
      );
    },
  ),
),

          const Card(
            child: ListTile(
              leading: Icon(
                Icons.info,
                size: 35,
              ),
              title: Text('Sobre'),
              subtitle: Text('Informações do aplicativo'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}