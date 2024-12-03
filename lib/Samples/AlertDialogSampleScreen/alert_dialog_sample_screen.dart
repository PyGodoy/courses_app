import 'package:courses_app/DesignSystem/components/alertDialog/alert_dialog.dart';
import 'package:flutter/material.dart';

class AlertDialogSampleScreen extends StatelessWidget {
  const AlertDialogSampleScreen({Key? key}) : super(key: key);

  Future<void> _showConfirmationDialog(BuildContext context) async {
    final result = await ConfirmationDialog.show(
      context,
      title: 'Confirmação',
      content: 'Você tem certeza de que deseja continuar?',
      confirmButtonText: 'Sim',
      cancelButtonText: 'Não',
    );

    // Exibe o resultado na interface
    final message = result == true
        ? 'Você confirmou a ação!'
        : 'Você cancelou a ação.';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Sample'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showConfirmationDialog(context),
          child: const Text('Exibir Alerta'),
        ),
      ),
    );
  }
}
