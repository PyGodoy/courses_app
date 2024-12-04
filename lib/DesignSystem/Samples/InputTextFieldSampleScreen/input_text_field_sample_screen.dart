import 'package:courses_app/DesignSystem/components/InputTextField/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';

class CustomTextFieldSampleScreen extends StatefulWidget {
  const CustomTextFieldSampleScreen({Key? key}) : super(key: key);

  @override
  State<CustomTextFieldSampleScreen> createState() => _CustomTextFieldSampleScreenState();
}

class _CustomTextFieldSampleScreenState extends State<CustomTextFieldSampleScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleSubmit() {
    final email = emailController.text;
    final password = passwordController.text;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Dados Inseridos'),
          content: Text('Email: $email\nSenha: $password'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom TextField Sample'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'Digite seu email',
              icon: Icons.email,
              controller: emailController,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'Digite sua senha',
              icon: Icons.lock,
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _handleSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              child: const Text(
                'Enviar',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
