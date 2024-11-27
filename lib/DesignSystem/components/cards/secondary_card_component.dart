import 'package:flutter/material.dart';

class SecondaryCardComponent extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color color;

  const SecondaryCardComponent({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // Imagem
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
