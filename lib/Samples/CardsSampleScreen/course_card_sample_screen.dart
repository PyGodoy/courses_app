import 'package:courses_app/DesignSystem/components/cards/CourseCardComponent.dart';
import 'package:flutter/material.dart';

class CourseCardSampleScreen extends StatelessWidget {
  const CourseCardSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Card Samples'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Exemplos de Cartões de Cursos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  // Exemplo 1
                  CourseCardComponent(
                    title: 'Curso de Flutter',
                    description: 'Aprenda a criar apps incríveis com Flutter.',
                    details: '40 horas • Iniciante',
                    imagePath: 'assets/images/flutter.png', // Substitua pelo caminho real
                    color: Colors.blue,
                    avatars: [
                      'assets/images/avatar1.png', // Substitua pelos caminhos reais
                      'assets/images/avatar2.png',
                      'assets/images/avatar3.png',
                    ],
                  ),
                  // Exemplo 2
                  CourseCardComponent(
                    title: 'Curso de Swift',
                    description: 'Domine o desenvolvimento para iOS com Swift.',
                    details: '50 horas • Avançado',
                    imagePath: 'assets/images/swift.png', // Substitua pelo caminho real
                    color: Colors.orange,
                    avatars: [
                      'assets/images/avatar4.png', // Substitua pelos caminhos reais
                      'assets/images/avatar5.png',
                      'assets/images/avatar6.png',
                    ],
                  ),
                  // Exemplo 3
                  CourseCardComponent(
                    title: 'UI/UX Design',
                    description: 'Crie designs intuitivos e bonitos.',
                    details: '30 horas • Todos os níveis',
                    imagePath: 'assets/images/design.png', // Substitua pelo caminho real
                    color: Colors.purple,
                    avatars: [
                      'assets/images/avatar7.png', // Substitua pelos caminhos reais
                      'assets/images/avatar8.png',
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
