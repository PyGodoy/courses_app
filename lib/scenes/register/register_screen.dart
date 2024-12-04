import 'package:courses_app/DesignSystem/components/InputTextField/input_text_field.dart';
import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/components/buttons/elevated_button.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/scenes/register/register_router.dart';
import 'package:courses_app/scenes/register/register_serivce.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isLoading = false; // Estado de carregamento
  bool? _isSuccess; // Estado de validação (null = nenhuma validação ainda)

  final RegisterService _registerService = RegisterService();

  Future<void> _register() async {
    setState(() {
      _isLoading = true; // Mostra o spinner
      _isSuccess = null; // Remove ícones anteriores
    });

    final email = _emailController.text;
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password != confirmPassword) {
      setState(() {
        _isLoading = false;
        _isSuccess = false;
      });
      // Exibe uma mensagem de erro se as senhas não coincidirem
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('As senhas não coincidem.'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    // Chama o serviço de registro
    final isRegistered = await _registerService.register(email, password);

    setState(() {
      _isLoading = false; // Remove o spinner
      _isSuccess = isRegistered; // Define sucesso ou falha
    });

    if (isRegistered) {
      // Exibe mensagem de sucesso e redireciona para a tela de login
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cadastro realizado com sucesso!'),
          backgroundColor: AppColors.confirm,
        ),
      );
      // Redireciona para a tela de login
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      // Exibe mensagem de erro
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Erro ao realizar cadastro.'),
          backgroundColor: AppColors.error,
        ),
      );
    }
  }
  void _onLoginterTap() {
    // Ação ao clicar no botão de registrar
    Navigator.pushReplacement(
      context,
      RegisterRouter.generateRoute(const RouteSettings(name: '/login')),
    );
  }

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
          // Conteúdo da tela
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Título
                    const Text(
                      'Registre-se',
                      style: AppTextStyles.title1,
                    ),
                    const SizedBox(height: 8),
                    // Subtítulo
                    const Text(
                      'Crie sua conta para acessar mais de 240 horas de conteúdo.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodyText1,
                    ),
                    const SizedBox(height: 20),
                    // Campo de e-mail
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 16),
                    // Campo de senha
                    CustomTextField(
                      controller: _passwordController,
                      hintText: 'Senha',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    // Campo de confirmar senha
                    CustomTextField(
                      controller: _confirmPasswordController,
                      hintText: 'Confirmar senha',
                      icon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    const SizedBox(height: 24),
                    // Exibição dinâmica de ícones (carregamento, sucesso ou erro)
                    if (_isLoading)
                      const CircularProgressIndicator() // Ícone de carregamento
                    else if (_isSuccess == true)
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.confirm,
                        size: 48,
                      ) // Ícone de sucesso
                    else if (_isSuccess == false)
                      const Icon(
                        Icons.error,
                        color: AppColors.error,
                        size: 48,
                      ), // Ícone de erro
                    const SizedBox(height: 16),
                    // Botão Cadastrar
                    CustomElevatedButton(
                      label: 'Cadastrar',
                      onPressed: _register, // Chama a função de registro
                    ),
                    const SizedBox(height: 32),
                    // Texto e botão de registrar
                    const Text(
                      'Já possui uma conta?',
                      style: AppTextStyles.bodyText2,
                    ),
                    const SizedBox(height: 8),
                    CustomElevatedButton(
                      label: 'Entrar',
                      size: ButtonSize.small,
                      onPressed: _onLoginterTap, // Ação ao clicar no botão registrar
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//