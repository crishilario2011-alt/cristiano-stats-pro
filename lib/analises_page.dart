import 'package:flutter/material.dart';

class AnalisesPage extends StatelessWidget {
  const AnalisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final analises = [
      {
        'titulo': 'Estatísticas das Equipes',
        'subtitulo': 'Gols, vitórias e desempenho',
        'icone': Icons.bar_chart,
      },
      {
        'titulo': 'Finalizações',
        'subtitulo': 'Chutes, chutes no alvo e média',
        'icone': Icons.ads_click,
      },
      {
        'titulo': 'Escanteios',
        'subtitulo': 'Média e tendências dos jogos',
        'icone': Icons.flag,
      },
      {
        'titulo': 'Cartões e Faltas',
        'subtitulo': 'Análise disciplinar das equipes',
        'icone': Icons.style,
      },
      {
        'titulo': 'Ambas Marcam',
        'subtitulo': 'Probabilidade de gols das duas equipes',
        'icone': Icons.sports_soccer,
      },
      {
        'titulo': 'Mais de 2.5 Gols',
        'subtitulo': 'Tendência ofensiva do confronto',
        'icone': Icons.local_fire_department,
      },
    ];

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
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: analises.length,
        itemBuilder: (context, index) {
          final analise = analises[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Icon(
                analise['icone'] as IconData,
                size: 35,
              ),
              title: Text(
                analise['titulo'] as String,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                analise['subtitulo'] as String,
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
