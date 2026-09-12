import 'package:flutter/material.dart';

import 'jogos_page.dart';
import 'analises_page.dart';
import 'jogadores_page.dart';
import 'scanner_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '⚽ Cristiano Stats Pro',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            const SizedBox(height: 10),

            const Text(
              'Central de Estatísticas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Análises profissionais de futebol e apostas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            _menuButton(
              context,
              icon: Icons.sports_soccer,
              title: 'Jogos de Hoje',
              subtitle: 'Confira os principais jogos',
              page: const JogosPage(),
            ),

            _menuButton(
              context,
              icon: Icons.analytics,
              title: 'Análises Profissionais',
              subtitle: 'Estatísticas completas das equipes',
              page: const AnalisesPage(),
            ),

            _menuButton(
              context,
              icon: Icons.people,
              title: 'Jogadores',
              subtitle: 'Faltas, finalizações e desarmes',
              page: const JogadoresPage(),
            ),

            _menuButton(
              context,
              icon: Icons.bar_chart,
              title: 'Estatísticas',
              subtitle: 'Dados avançados das partidas',
              page: const AnalisesPage(),
            ),

            _menuButton(
              context,
              icon: Icons.trending_up,
              title: 'Mercado de Apostas',
              subtitle: 'Probabilidades e oportunidades',
              page: const AnalisesPage(),
            ),

          ],
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),

      child: ListTile(
        contentPadding: const EdgeInsets.all(16),

        leading: Icon(
          icon,
          size: 35,
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        subtitle: Text(subtitle),

        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
      ),
    );
  }
}
