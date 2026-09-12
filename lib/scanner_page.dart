import 'package:flutter/material.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scannerItems = [
      {
        'icon': Icons.trending_up,
        'title': 'Melhores Oportunidades',
        'subtitle': 'Jogos com maior potencial estatístico',
      },
      {
        'icon': Icons.sports_soccer,
        'title': 'Gols',
        'subtitle': 'Over 1.5, Over 2.5 e mercados de gols',
      },
      {
        'icon': Icons.handshake,
        'title': 'Ambas Marcam',
        'subtitle': 'Jogos com maior probabilidade de BTTS',
      },
      {
        'icon': Icons.flag,
        'title': 'Escanteios',
        'subtitle': 'Análise de médias e tendências',
      },
      {
        'icon': Icons.style,
        'title': 'Cartões',
        'subtitle': 'Faltas, cartões e intensidade dos jogos',
      },
      {
        'icon': Icons.person,
        'title': 'Scanner de Jogadores',
        'subtitle': 'Finalizações, desarmes e faltas',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🔥 Scanner Profissional',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Cristiano Stats Pro',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Selecione um mercado para iniciar a análise estatística.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),

          ...scannerItems.map(
            (item) => Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Icon(
                  item['icon'] as IconData,
                  size: 32,
                ),
                title: Text(
                  item['title'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  item['subtitle'] as String,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${item['title']} será conectado ao motor estatístico.',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
