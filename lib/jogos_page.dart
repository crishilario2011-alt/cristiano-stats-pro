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
        'casa': 'Arsenal',
        'fora': 'Liverpool',
        'horario': '13:30',
      },
      {
        'liga': 'La Liga',
        'casa': 'Barcelona',
        'fora': 'Real Madrid',
        'horario': '16:00',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '⚽ Jogos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Jogos de Hoje',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: jogos.length,
              itemBuilder: (context, index) {
                final jogo = jogos[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jogo['liga']!,
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                jogo['casa']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'X',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                jogo['fora']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Center(
                          child: Text(
                            '🕒 ${jogo['horario']}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Análise de ${jogo['casa']} x ${jogo['fora']} em breve!',
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.analytics),
                            label: const Text('Ver Análise'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
