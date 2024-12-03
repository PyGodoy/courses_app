import 'package:flutter/material.dart';
import '../../DesignSystem/components/buttons/custom_button.dart';

class CustomButtonSampleScreen extends StatelessWidget {
  const CustomButtonSampleScreen({Key? key}) : super(key: key);

  void _onButtonPressed(String message) {
    // Função de callback para botões
    debugPrint(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Samples'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Exemplos de Botões Personalizados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Botão simples
            CustomButton(
              text: 'Botão Simples',
              onPressed: () => _onButtonPressed('Botão Simples Pressionado!'),
            ),
            const SizedBox(height: 16),
            // Botão com cor personalizada
            CustomButton(
              text: 'Botão Verde',
              onPressed: () => _onButtonPressed('Botão Verde Pressionado!'),
              color: Colors.green,
            ),
            const SizedBox(height: 16),
            // Botão com ícone
            CustomButton(
              text: 'Botão com Ícone',
              onPressed: () => _onButtonPressed('Botão com Ícone Pressionado!'),
              icon: Icons.star,
              color: Colors.blue,
            ),
            const SizedBox(height: 16),
            // Botão desativado
            CustomButton(
              text: 'Botão Desativado',
              onPressed: () {},
              color: Colors.grey,
              icon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}
