import 'package:app_awesome_notifications/screens/home_screen.dart';
import 'package:app_awesome_notifications/services/notification_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: Colors.blue,
        shadowColor: const Color(0xff6D28D9),
        useMaterial3: false,
      ),
      home: const HomeScreen(),
    );
  }
}
