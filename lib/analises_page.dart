import 'package:flutter/material.dart';

class AnalisesPage extends StatelessWidget {
  const AnalisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '📊 Análises Profissionais',
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

            const Text(
              'Central de Estatísticas',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Análises profissionais para encontrar as melhores oportunidades.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 24),

            _buildCard(
              icon: Icons.sports_soccer,
              title: 'Últimos Jogos',
              subtitle: 'Forma, vitórias, gols e desempenho',
            ),

            _buildCard(
              icon: Icons.gps_fixed,
              title: 'Finalizações',
              subtitle: 'Chutes, chutes no alvo e média por jogo',
            ),

            _buildCard(
              icon: Icons.flag,
              title: 'Escanteios',
              subtitle: 'Médias e tendências de corners',
            ),

            _buildCard(
              icon: Icons.style,
              title: 'Cartões',
              subtitle: 'Faltas, cartões e intensidade',
            ),

            _buildCard(
              icon: Icons.handshake,
              title: 'Ambas Marcam',
              subtitle: 'Probabilidade de BTTS',
            ),

            _buildCard(
              icon: Icons.trending_up,
              title: 'Probabilidades',
              subtitle: 'Estudo de tendências estatísticas',
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
      margin: const EdgeInsets.only(bottom: 16),
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
