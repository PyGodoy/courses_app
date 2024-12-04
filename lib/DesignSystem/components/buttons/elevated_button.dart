import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  final double? height;
  final double? width;
  final ButtonSize size;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = AppColors.secondary, // Cor padrão
    this.height,
    this.width,
    this.size = ButtonSize.medium, // Tamanho padrão
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define dimensões com base no tamanho
    final double calculatedHeight = height ?? _getHeightForSize(size);
    final double calculatedWidth = width ?? _getWidthForSize(size);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Cor de fundo do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Borda arredondada
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0), // Ajuste do padding
        minimumSize: Size(calculatedWidth, calculatedHeight), // Tamanhos mínimos
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

  // Define altura baseada no tamanho
  double _getHeightForSize(ButtonSize size) {
    switch (size) {
      case ButtonSize.small:
        return 36.0;
      case ButtonSize.medium:
        return 48.0;
      case ButtonSize.large:
        return 56.0;
    }
  }

  // Define largura baseada no tamanho
  double _getWidthForSize(ButtonSize size) {
    switch (size) {
      case ButtonSize.small:
        return 120.0;
      case ButtonSize.medium:
        return double.infinity; // Preenche horizontalmente
      case ButtonSize.large:
        return 200.0;
    }
  }
}

// Enum para tamanhos de botão
enum ButtonSize { small, medium, large }
