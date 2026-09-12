import 'package:flutter/material.dart';

import 'home_page.dart';
import 'jogos_page.dart';
import 'analises_page.dart';
import 'jogadores_page.dart';
import 'scanner_page.dart';
import 'estatisticas_page.dart';

void main() {
  runApp(const CristianoStatsPro());
}

class CristianoStatsPro extends StatelessWidget {
  const CristianoStatsPro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cristiano Stats Pro',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),

      home: const HomePage(),
    );
  }
}
