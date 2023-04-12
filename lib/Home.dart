import 'package:flutter/material.dart';
import 'themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    const primaryColor = AppColors.primaryColor;
    const secondaryColor = AppColors.secondaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                print("Ação TV");
              },
              icon: const Icon(Icons.connected_tv)),
          IconButton(
              onPressed: () {
                print("Ação Noti");
              },
              icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
      ),
      floatingActionButton: Container(
        width: 56.0,
        height: 56.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              primaryColor,
              secondaryColor,
            ],
            begin: Alignment.topLeft, // Ponto de início do gradiente
            end: Alignment.bottomRight, // Ponto de término do gradiente
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent, // Define a cor de fundo do FAB como transparente
          elevation: 0.0, // Define a elevação do FAB como 0 para eliminar a sombra
          child: const Icon(Icons.add), // Ícone do FAB
          onPressed: () {
            // Função para ser executada quando o FAB for pressionado
            print("Clicado");
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.monetization_on)),
            const SizedBox(width: 40),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
