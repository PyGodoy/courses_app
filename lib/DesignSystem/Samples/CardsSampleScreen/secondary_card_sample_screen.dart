import 'package:courses_app/DesignSystem/components/cards/secondary_card_component.dart';
import 'package:flutter/material.dart';

class SecondaryCardSampleScreen extends StatelessWidget {
  const SecondaryCardSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secondary Card Samples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SecondaryCardComponent(
              title: 'Curso de Flutter',
              description: 'Aprenda a criar aplicativos com Flutter.',
              imagePath: 'assets/images/flutter.png', // Substitua pelo caminho correto da imagem
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 16),
            SecondaryCardComponent(
              title: 'Curso de Swift',
              description: 'Desenvolva aplicativos para iOS com Swift.',
              imagePath: 'assets/images/swift.png', // Substitua pelo caminho correto da imagem
              color: Colors.orangeAccent,
            ),
            const SizedBox(height: 16),
            SecondaryCardComponent(
              title: 'Curso de UI/UX',
              description: 'Melhore suas habilidades de design.',
              imagePath: 'assets/images/design.png', // Substitua pelo caminho correto da imagem
              color: Colors.greenAccent,
            ),
            const SizedBox(height: 16),
            SecondaryCardComponent(
              title: 'Curso de Python',
              description: 'Automatize tarefas e desenvolva scripts.',
              imagePath: 'assets/images/python.png', // Substitua pelo caminho correto da imagem
              color: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
