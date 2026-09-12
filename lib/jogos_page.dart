import 'package:flutter/material.dart';

class JogosPage extends StatelessWidget {
  const JogosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jogos = [
      {
        'liga': 'Brasileirão Série A',
        'casa': 'Flamengo',
        'fora': 'Palmeiras',
        'horario': '16:00',
      },
      {
        'liga': 'Brasileirão Série A',
        'casa': 'São Paulo',
        'fora': 'Corinthians',
        'horario': '18:30',
      },
      {
        'liga': 'Premier League',
        'casa': 'Liverpool',
        'fora': 'Arsenal',
        'horario': '15:00',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '⚽ Jogos do Dia',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: jogos.length,
        itemBuilder: (context, index) {
          final jogo = jogos[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(
                Icons.sports_soccer,
                size: 35,
              ),
              title: Text(
                '${jogo['casa']} x ${jogo['fora']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                '${jogo['liga']} • ${jogo['horario']}',
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          );
        },
      ),
    );
  }
}
