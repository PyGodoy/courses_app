import 'package:courses_app/DesignSystem/components/buttons/elevated_button.dart';
import 'package:flutter/material.dart';
import '../../shared/colors/app_colors.dart';

class CustomElevatedButtonSampleScreen extends StatelessWidget {
  const CustomElevatedButtonSampleScreen({Key? key}) : super(key: key);

  void _onButtonPressed(String message) {
    debugPrint(message); // Log de mensagens no console
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Elevated Button Samples'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Exemplos de Botões Elevados Personalizados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Botão padrão
            CustomElevatedButton(
              label: 'Botão Padrão',
              onPressed: () => _onButtonPressed('Botão Padrão Pressionado!'),
            ),
            const SizedBox(height: 16),
            // Botão com largura fixa
            CustomElevatedButton(
              label: 'Botão com Largura Fixa',
              onPressed: () => _onButtonPressed('Botão com Largura Fixa Pressionado!'),
              width: 200,
            ),
            const SizedBox(height: 16),
            // Botão com cor personalizada
            CustomElevatedButton(
              label: 'Botão Verde',
              onPressed: () => _onButtonPressed('Botão Verde Pressionado!'),
              color: Colors.green,
            ),
            const SizedBox(height: 16),
            // Botão com altura personalizada
            CustomElevatedButton(
              label: 'Botão Alto',
              onPressed: () => _onButtonPressed('Botão Alto Pressionado!'),
              height: 60.0,
            ),
            const SizedBox(height: 16),
            // Botão desativado
            CustomElevatedButton(
              label: 'Botão Desativado',
              onPressed: () {}, // Função vazia simula botão desativado
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
