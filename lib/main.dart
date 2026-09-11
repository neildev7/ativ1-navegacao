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
      home: const CatalogoProdutos(),
    );
  }
}

class CatalogoProdutos extends StatelessWidget {
  const CatalogoProdutos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('GTA VI'),
            subtitle: Text('R\$ 799,00'),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Iphone 18'),
            subtitle: Text('R\$ 29999,90'),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Boné'),
            subtitle: Text('R\$ 59,90'),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Mochila'),
            subtitle: Text('R\$ 129,90'),
          ),
        ],
      ),
    );
  }
}