import 'package:flutter/material.dart';

import 'jogos_page.dart';
import 'analises_page.dart';
import 'jogadores_page.dart';
import 'scanner_page.dart';
import 'estatisticas_page.dart';

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
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Análises profissionais para futebol e apostas esportivas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            _menuButton(
              context,
              icon: Icons.sports_soccer,
              title: 'Jogos de Hoje',
              subtitle: 'Jogos, horários e informações',
              page: const JogosPage(),
            ),

            _menuButton(
              context,
              icon: Icons.trending_up,
              title: 'Análises Profissionais',
              subtitle: 'Probabilidades e mercados',
              page: const AnalisesPage(),
            ),

            _menuButton(
              context,
              icon: Icons.person_search,
              title: 'Estatísticas de Jogadores',
              subtitle: 'Finalizações, faltas e desarmes',
              page: const JogadoresPage(),
            ),

            _menuButton(
              context,
              icon: Icons.document_scanner,
              title: 'Scanner de Jogos',
              subtitle: 'Encontre oportunidades estatísticas',
              page: const ScannerPage(),
            ),

            _menuButton(
              context,
              icon: Icons.bar_chart,
              title: 'Estatísticas',
              subtitle: 'Dados completos das equipes',
              page: const EstatisticasPage(),
            ),

            const SizedBox(height: 25),

            const Text(
              'Cristiano Stats Pro v1.0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),
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
      margin: const EdgeInsets.only(bottom: 14),

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
