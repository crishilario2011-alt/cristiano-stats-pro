import 'package:flutter/material.dart';

class JogosPage extends StatelessWidget {
  const JogosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jogos do Dia',
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
            '⚽ Jogos em Destaque',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Análises estatísticas profissionais',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          _buildJogoCard(
            time: '15:00',
            campeonato: 'Brasileirão',
            casa: 'Time da Casa',
            fora: 'Time Visitante',
          ),

          const SizedBox(height: 12),

          _buildJogoCard(
            time: '18:30',
            campeonato: 'Série B',
            casa: 'Equipe A',
            fora: 'Equipe B',
          ),

          const SizedBox(height: 12),

          _buildJogoCard(
            time: '21:00',
            campeonato: 'Liga Internacional',
            casa: 'Time 1',
            fora: 'Time 2',
          ),
        ],
      ),
    );
  }

  Widget _buildJogoCard({
    required String time,
    required String campeonato,
    required String casa,
    required String fora,
  }) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              campeonato,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              '$casa  X  $fora',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 8),

            Text(
              '🕒 $time',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 12),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.sports_soccer),
                    SizedBox(height: 4),
                    Text('Gols'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flag),
                    SizedBox(height: 4),
                    Text('Escanteios'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.style),
                    SizedBox(height: 4),
                    Text('Cartões'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
