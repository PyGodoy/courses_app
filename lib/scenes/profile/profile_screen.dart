import 'package:courses_app/DesignSystem/components/alertDialog/alert_dialog.dart';
import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/shared/spacing/app_spacing.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/scenes/home/home_router.dart'; // Importando o HomeRouter
import 'package:courses_app/scenes/profile/profile_router.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Profile', style: AppTextStyles.title),
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            // Navega de volta para a HomeScreen usando o HomeRouter
            Navigator.pushReplacement(
              context,
              HomeRouter.route('/home'), // Aqui estamos usando o HomeRouter
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 32, backgroundColor: AppColors.secondary),
                const SizedBox(width: AppSpacing.medium),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mikaell Godoy', style: AppTextStyles.title),
                    Text('godo...@gmail.com', style: AppTextStyles.body),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.large),
            ListTile(
              title: const Text('Editar Nome', style: AppTextStyles.body),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => print('Clicou em Editar Nome'),
            ),
            ListTile(
              title: const Text('Meus Cursos', style: AppTextStyles.body),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => print('Clicou em Meus Cursos'),
            ),
            ListTile(
              title: const Text('Notificação', style: AppTextStyles.body),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Navegação para a tela de notificações usando o ProfileRouter
                Navigator.pushReplacement(
                  context,
                  ProfileRouter.generateRoute(const RouteSettings(name: '/notifications')),
                );
              },
            ),
            ListTile(
              title: const Text('Termos & Condições', style: AppTextStyles.body),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => print('Terms tapped'),
            ),
            const SizedBox(height: AppSpacing.large),
            // Botão Logout, que chama o ConfirmationDialog
            TextButton(
              onPressed: () async {
                bool? shouldLogout = await ConfirmationDialog.show(
                  context,
                  title: 'Sair do aplicativo',
                  content: 'Tem certeza de que deseja sair?',
                  confirmButtonText: 'Sair',
                  cancelButtonText: 'Cancelar',
                );

                if (shouldLogout == true) {
                  // Usando ProfileRouter para navegar para a tela de login
                  Navigator.pushReplacement(
                    context,
                    ProfileRouter.generateRoute(const RouteSettings(name: '/login')), // Navega para Login
                  );
                }
              },
              child: const Text('Logout', style: AppTextStyles.error),
            ),
          ],
        ),
      ),
    );
  }
}
