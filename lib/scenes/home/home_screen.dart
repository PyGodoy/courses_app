import 'package:courses_app/DesignSystem/components/alertDialog/alert_dialog.dart';
import 'package:courses_app/DesignSystem/components/cards/secondary_card_component.dart';
import 'package:courses_app/scenes/home/home_router.dart';
import 'package:flutter/material.dart';
import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/components/cards/CourseCardComponent.dart';
import 'package:courses_app/DesignSystem/shared/spacing/app_spacing.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/DesignSystem/components/bottom_navigation/bottom_navigation_bar.dart';
import 'package:courses_app/scenes/initialscreen/initial_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('MobCourses', style: AppTextStyles.title),
        backgroundColor: AppColors.background,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async {
            // Mostra a mensagem de confirmação ao clicar no botão de voltar
            final shouldExit = await ConfirmationDialog.show(
              context,
              title: 'Tem certeza?',
              content: 'Você tem certeza que deseja sair?',
              confirmButtonText: 'Sim',
              cancelButtonText: 'Cancelar',
            );

            if (shouldExit == true) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const InitialScreen()),
              );
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título "Cursos"
              Text('Cursos', style: AppTextStyles.title),
              const SizedBox(height: AppSpacing.medium),

              // Carrossel horizontal
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CourseCardComponent(
                      title: 'Animações em Swift',
                      description: 'Crie e anime um aplicativo iOS do zero',
                      details: '61 SEÇÕES - 11 HORAS',
                      imagePath: 'assets/images/swift.png',
                      color: AppColors.cardPrimary,
                      avatars: [
                        'assets/images/mikaell.png',
                        'assets/images/mikaell.png',
                        'assets/images/mikaell.png',
                      ],
                    ),
                    SizedBox(width: 16),
                    CourseCardComponent(
                      title: 'Animações em Flutter',
                      description: 'Crie e anime um aplicativo Android do zero',
                      details: '61 SEÇÕES - 11 HORAS',
                      imagePath: 'assets/images/flutter.png',
                      color: AppColors.cardSecondary,
                      avatars: [
                        'assets/images/mikaell.png',
                        'assets/images/mikaell.png',
                        'assets/images/mikaell.png',
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.large),

              // Título "Recentes"
              const Text('Recentes', style: AppTextStyles.title),
              const SizedBox(height: AppSpacing.medium),

              // Lista de cards "Recentes"
              const Column(
                children: [
                  SecondaryCardComponent(
                    title: 'Design System',
                    description: 'Assista ao vídeo - 60 minutos',
                    imagePath: 'assets/images/swift.png',
                    color: AppColors.cardPrimary, // Roxo
                  ),
                  SizedBox(height: AppSpacing.medium),
                  SecondaryCardComponent(
                    title: 'Animated Menu',
                    description: 'Assista ao vídeo - 45 minutos',
                    imagePath: 'assets/images/flutter.png',
                    color: AppColors.cardSecondary, // Azul
                  ),
                  SizedBox(height: AppSpacing.medium),
                  SecondaryCardComponent(
                    title: 'Estrutura do Código',
                    description: 'Assista ao vídeo - 30 minutos',
                    imagePath: 'assets/images/swift.png',
                    color: AppColors.cardPrimary, // Azul
                  ),
                  SizedBox(height: AppSpacing.medium),
                  SecondaryCardComponent(
                    title: 'Noções básica de Flutter',
                    description: 'Assista ao vídeo - 50 minutos',
                    imagePath: 'assets/images/flutter.png',
                    color: AppColors.cardSecondary, // Azul
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0, // Define o índice atual como "Home"
        onTap: (index) {
          String routeName = '/home'; // Rota padrão

          switch (index) {
            case 1:
              routeName = '/notifications'; // Rota para Notifications
              break;
            case 2:
              routeName = '/profile'; // Rota para Profile
              break;
          }

          Navigator.pushReplacement(
            context,
            HomeRouter.route(routeName),
          );
        },
      ),
    );
  }
}
