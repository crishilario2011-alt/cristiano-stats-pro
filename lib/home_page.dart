import 'package:flutter/material.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Análises Profissionais de Futebol',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Estatísticas • Jogadores • Mercados • Probabilidades',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 24),

            _buildCard(
              icon: Icons.sports_soccer,
              title: 'Análise de Jogos',
              subtitle: 'Estatísticas completas das equipes',
            ),

            const SizedBox(height: 12),

            _buildCard(
              icon: Icons.person,
              title: 'Estatísticas de Jogadores',
              subtitle: 'Finalizações, faltas e desarmes',
            ),

            const SizedBox(height: 12),

            _buildCard(
              icon: Icons.bar_chart,
              title: 'Mercados de Apostas',
              subtitle: 'Análises estatísticas profissionais',
            ),

            const SizedBox(height: 12),

            _buildCard(
              icon: Icons.trending_up,
              title: 'Probabilidades',
              subtitle: 'Estudo de tendências e desempenho',
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
