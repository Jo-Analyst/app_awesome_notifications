import 'package:app_awesome_notifications/services/notification_service.dart';
import 'package:app_awesome_notifications/widgets/notification_button.dart';
import 'package:app_awesome_notifications/widgets/top_bar.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Colors.grey[200]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(title: 'Awesome Notification'),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Título da notificação',
                  body: 'Corpo da notificação',
                );
              },
              text: 'Notificação Normal',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Título da notificação',
                  body: 'Corpo da notificação',
                  summary: 'Pequeno resumo',
                  notificationLayout: NotificationLayout.Inbox,
                );
              },
              text: 'Notificação com resumo',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Título da notificação',
                  body: 'Corpo da notificação',
                  summary: 'Pequeno resumo',
                  notificationLayout: NotificationLayout.ProgressBar,
                );
              },
              text: 'Notificação com Progresso',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Título da notificação',
                  body: 'Corpo da notificação',
                  summary: 'Pequeno resumo',
                  notificationLayout: NotificationLayout.Messaging,
                );
              },
              text: 'Notificação de mensagem',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                    title: 'Título da notificação',
                    body: 'Corpo da notificação',
                    summary: 'Pequeno resumo',
                    notificationLayout: NotificationLayout.BigPicture,
                    bigPicture:
                        'https://files.tecnoblog.net/wp-content/uploads/2019/09/emoji.jpg');
              },
              text: 'Notificação de imagem grande',
            ),
            NotificationButton(
              onPressed: () async {
                await NotificationService.showNotification(
                  title: 'Título da notificação',
                  body: 'Corpo da notificação',
                  payload: {'navigate': 'true'},
                  actionButtons: [
                    NotificationActionButton(
                      key: 'check',
                      label: 'Confira',
                      actionType: ActionType.SilentAction,
                      color: Colors.green,
                    ),
                  ],
                );
              },
              text: 'Notificação de botões de ação',
            ),
            NotificationButton(
              text: "Notificação agendada",
              onPressed: () async {
                await NotificationService.showNotification(
                  title: "Notificação agendada",
                  body: "A notificação foi disparada após 5 segundos",
                  scheduled: true,
                  interval: 5,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
