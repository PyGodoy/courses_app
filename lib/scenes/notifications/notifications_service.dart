class NotificationsService {
  // Simulação de lógica para carregamento de notificações
  List<Map<String, String>> fetchNotifications() {
    return [
      {'title': 'New Course Available', 'time': '2 hours ago'},
      {'title': 'New Comment on Post', 'time': '5 hours ago'},
      {'title': 'Profile Picture Updated', 'time': '1 day ago'},
    ];
  }
}
