import 'package:courses_app/DesignSystem/components/cards/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationCardSampleScreen extends StatelessWidget {
  const NotificationCardSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Card Samples'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          const SizedBox(height: 8),
          NotificationCard(
            notificationText: 'Nova mensagem recebida de Ana.',
            notificationTime: '5 minutos atrás',
            icon: Icons.message_rounded,
          ),
          NotificationCard(
            notificationText: 'Atualização de sistema disponível.',
            notificationTime: '1 hora atrás',
            icon: Icons.system_update,
          ),
          NotificationCard(
            notificationText: 'Seu pedido foi enviado com sucesso!',
            notificationTime: '3 horas atrás',
            icon: Icons.local_shipping,
          ),
          NotificationCard(
            notificationText: 'Lembrete: Reunião às 14h.',
            notificationTime: 'Ontem',
            icon: Icons.calendar_today,
          ),
          NotificationCard(
            notificationText: 'Seu pagamento foi recebido.',
            notificationTime: '2 dias atrás',
            icon: Icons.attach_money,
          ),
        ],
      ),
    );
  }
}
