import 'package:flutter/material.dart';

class EstatisticasPage extends StatelessWidget {
  const EstatisticasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📊 Estatísticas Profissionais'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Central de Estatísticas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Dados profissionais para análise de futebol',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            _card(
              icon: Icons.sports_soccer,
              title: 'Média de Gols',
              subtitle: 'Análise de gols por equipe e competição',
            ),

            _card(
              icon: Icons.ads_click,
              title: 'Finalizações',
              subtitle: 'Chutes totais e chutes no alvo',
            ),

            _card(
              icon: Icons.flag,
              title: 'Escanteios',
              subtitle: 'Médias e tendências de corners',
            ),

            _card(
              icon: Icons.style,
              title: 'Cartões',
              subtitle: 'Amarelos, vermelhos e média por jogo',
            ),

            _card(
              icon: Icons.people,
              title: 'Jogadores',
              subtitle: 'Faltas, desarmes e finalizações',
            ),

            _card(
              icon: Icons.trending_up,
              title: 'Tendências',
              subtitle: 'Probabilidades e análise avançada',
            ),
          ],
        ),
      ),
    );
  }

  Widget _card({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icon,
          size: 35,
          color: Colors.green,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
