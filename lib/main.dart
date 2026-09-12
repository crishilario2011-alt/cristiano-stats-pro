import 'package:flutter/material.dart';

void main() {
  runApp(const CristianoStatsPro());
}

class CristianoStatsPro extends StatelessWidget {
  const CristianoStatsPro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cristiano Stats Pro',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚽ Cristiano Stats Pro'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 20),
          const Text(
            'Análises Profissionais de Futebol',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Estatísticas para ajudar você a analisar jogos, equipes e jogadores.',
          ),
          const SizedBox(height: 30),
          _menuCard(
            Icons.sports_soccer,
            'Analisar Jogo',
            'Estatísticas completas da partida',
          ),
          _menuCard(
            Icons.people,
            'Jogadores',
            'Finalizações, faltas e desarmes',
          ),
          _menuCard(
            Icons.bar_chart,
            'Estatísticas',
            'Dados profissionais das equipes',
          ),
          _menuCard(
            Icons.local_fire_department,
            'Melhores Entradas',
            'Seleção estatística de mercados',
          ),
        ],
      ),
    );
  }

  static Widget _menuCard(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(
          icon,
          size: 35,
          color: Colors.greenAccent,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
