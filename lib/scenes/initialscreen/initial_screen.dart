import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/components/buttons/custom_button.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/scenes/initialscreen/initial_router.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo com gradiente
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 139, 174, 245), AppColors.primary],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Novo título
                Text(
                  'Bem-vindo ao MobCourses',
                  style: AppTextStyles.title1
                ),
                const SizedBox(height: 32),
                // Título original
                Text(
                  'Aprenda Flutter e Swift',
                  style: AppTextStyles.title,
                ),
                const SizedBox(height: 16),
                // Descrição
                Text(
                  'Aprenda a criar aplicativos reais com Flutter e Swift. Cursos completos sobre as melhores ferramentas.',
                  style: AppTextStyles.bodyText1,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  text: 'Começar o curso',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      InitialRouter.generateRoute(
                        const RouteSettings(name: '/initial/login'),
                      ),
                    );
                  },
                  color: AppColors.secondary,
                  icon: Icons.arrow_forward,
                ),
                const SizedBox(height: 20),
                Text(
                  'A app inclui acesso a mais de 30 cursos, mais de 240 tutoriais, mais de 120 horas de vídeos, arquivos originais e certificados.',
                  style: AppTextStyles.bodyText2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//
