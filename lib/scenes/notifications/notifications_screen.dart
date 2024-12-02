import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/components/cards/notification_card.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/scenes/home/home_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificações', 
          style: AppTextStyles.title,
        ),
        backgroundColor: AppColors.background, // Cor do app bar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            Navigator.pushReplacement(
              context,
              HomeRouter.route('/home'), // Navegar para a HomeScreen usando o router
            );
          },
        ),
      ),
      body: ListView(
        children: [
          NotificationCard(
            notificationText:
                "O curso de animação Flutter publicou um novo vídeo",
            notificationTime: "2 horas atrás",
            icon: CupertinoIcons.bell,
          ),
          NotificationCard(
            notificationText: "Novo comentário em sua publicação",
            notificationTime: "5 horas atrás",
            icon: CupertinoIcons.chat_bubble_2,
          ),
          NotificationCard(
            notificationText: "Sua foto de perfil foi atualizada",
            notificationTime: "1 dia atrás",
            icon: CupertinoIcons.person_crop_square_fill,
          ),
          // Adicione mais notificações conforme necessário
        ],
      ),
    );
  }
}
