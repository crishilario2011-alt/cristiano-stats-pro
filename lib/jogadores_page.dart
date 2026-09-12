import 'package:flutter/material.dart';

class JogadoresPage extends StatelessWidget {
  const JogadoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '👤 Jogadores',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Estatísticas dos Jogadores',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Consulte os principais indicadores para análise profissional.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 24),

            _buildCard(
              icon: Icons.sports_soccer,
              title: 'Finalizações',
              subtitle: 'Jogadores com mais chutes e chutes no gol',
            ),

            _buildCard(
              icon: Icons.front_hand,
              title: 'Faltas',
              subtitle: 'Faltas cometidas e faltas sofridas',
            ),

            _buildCard(
              icon: Icons.security,
              title: 'Desarmes',
              subtitle: 'Jogadores com maior número de desarmes',
            ),

            _buildCard(
              icon: Icons.flag,
              title: 'Impedimentos',
              subtitle: 'Estatísticas de impedimentos por jogador',
            ),

            _buildCard(
              icon: Icons.star,
              title: 'Ranking',
              subtitle: 'Melhores jogadores por estatística',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 14),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
