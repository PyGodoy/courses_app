import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double height;
  final double width;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = AppColors.secondary, // Cor padrão
    this.height = 48.0, // Altura padrão
    this.width = double.infinity, // Largura padrão para preencher
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary, // Cor de fundo do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Borda arredondada
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0), // Ajuste do padding
        minimumSize: Size(width, height), // Largura e altura mínimas
        elevation: 4, // Sombra do botão
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16, // Tamanho da fonte
          fontWeight: FontWeight.w600, // Peso da fonte
        ),
      ),
    );
  }
}
