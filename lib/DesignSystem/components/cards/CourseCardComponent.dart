import 'package:flutter/material.dart';

class CourseCardComponent extends StatelessWidget {
  final String title;
  final String description;
  final String details;
  final String imagePath;
  final Color color;
  final List<String> avatars;

  const CourseCardComponent({
    Key? key,
    required this.title,
    required this.description,
    required this.details,
    required this.imagePath,
    required this.color,
    required this.avatars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 250,
        minHeight: 260, // Aumentamos um pouco a altura mínima para garantir que o conteúdo caiba
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,  // Garante que o conteúdo não ultrapasse a altura disponível
            children: [
              // Título e imagem alinhados horizontalmente
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Título
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Imagem
                  Image.asset(
                    imagePath,
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Descrição
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),

              // Detalhes
              Text(
                details,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),

              // Avatares em uma linha
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: avatars.map((avatar) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundImage: AssetImage(avatar),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
