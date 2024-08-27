import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Tela'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/testeimg.png', // Caminho da imagem local
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20), // Espaçamento entre a imagem e o título
          const Text(
            'Título da Tela',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
              height: 10), // Espaçamento entre o título e o parágrafo
          const Text(
            'Este é um parágrafo de texto que descreve algo importante na tela.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20), // Espaçamento entre o parágrafo e o botão
          ElevatedButton(
            onPressed: () {
              // Ação do botão
            },
            child: const Text('Clique Aqui'),
          ),
        ],
      ),
    );
  }
}
