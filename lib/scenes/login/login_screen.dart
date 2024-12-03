import 'package:courses_app/DesignSystem/components/InputTextField/input_text_field.dart';
import 'package:courses_app/DesignSystem/shared/colors/app_colors.dart';
import 'package:courses_app/DesignSystem/components/buttons/elevated_button.dart';
import 'package:courses_app/DesignSystem/shared/typography/app_text_styles.dart';
import 'package:courses_app/scenes/login/login_router.dart';
import 'package:courses_app/scenes/login/login_service.dart';
import 'package:courses_app/DesignSystem/components/LinkedLabel/linked_label.dart'; // Importar o LinkedLabel
import 'package:courses_app/DesignSystem/components/LinkedLabel/linked_label_view_model.dart'; // Importar o ViewModel do LinkedLabel
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false; // Estado de carregamento
  bool? _isSuccess; // Estado de validação (null = nenhuma validação ainda)

  final LoginService _loginService = LoginService();

  Future<void> _signIn() async {
    setState(() {
      _isLoading = true; // Mostra o spinner
      _isSuccess = null; // Remove ícones anteriores
    });

    final email = _emailController.text;
    final password = _passwordController.text;

    // Chama o serviço de autenticação
    final isAuthenticated = await _loginService.authenticate(email, password);

    setState(() {
      _isLoading = false; // Remove o spinner
      _isSuccess = isAuthenticated; // Define sucesso ou falha
    });

    if (isAuthenticated) {
      // Redireciona para a HomeScreen após sucesso
      Navigator.pushReplacement(
        context,
        LoginRouter.generateRoute(const RouteSettings(name: '/home')),
      );
    } else {
      // Mantém na tela de login e exibe o ícone de erro
      await Future.delayed(const Duration(seconds: 2)); // Simula feedback
    }
  }

  void _onForgotPasswordTap() {
    // Ação ao clicar em "Esqueci minha senha"
    print('Esqueci minha senha foi clicado!');
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
                      'Login',
                      style: AppTextStyles.title1,
                    ),
                    const SizedBox(height: 8),
                    // Subtítulo
                    const Text(
                      'Acesso a mais de 240 horas de conteúdo. Aprenda a criar aplicativos reais com Flutter e Swift.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodyText1,
                    ),
                    const SizedBox(height: 20),
                    // Campo de e-mail (Customizado)
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 16),
                    // Campo de senha (Customizado)
                    CustomTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(height: 8),
                    // Adicionar o LinkedLabel
                    Align(
                      alignment: Alignment.centerRight,
                      child: LinkedLabel.instantiate(
                        viewModel: LinkedLabelViewModel(
                          fullText: 'Esqueci minha senha',
                          linkedText: 'Esqueci minha senha',
                          onLinkTap: _onForgotPasswordTap,
                        ),
                      ),
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
                    // Botão Sign In
                    CustomElevatedButton(
                      label: 'Login',
                      onPressed: _signIn, // Chama a função de login
                    ),
                    const SizedBox(height: 24),
                    // Divider e opções de login alternativas
                    const Text('Ou'),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/email.png',
                            height: 40, // Aumenta o tamanho
                            width: 40,
                          ),
                          onPressed: () {
                            // Ação de login com email
                          },
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/apple.png',
                            height: 40, // Aumenta o tamanho
                            width: 40,
                          ),
                          onPressed: () {
                            // Ação de login com Apple
                          },
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/google.png',
                            height: 40, // Aumenta o tamanho do Google
                            width: 40,
                          ),
                          onPressed: () {
                            // Ação de login com Google
                          },
                        ),
                      ],
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