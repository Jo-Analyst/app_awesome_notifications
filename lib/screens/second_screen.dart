import 'package:app_awesome_notifications/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: const Column(
            children: [
              TopBar(title: 'Segunda Tela'),
              Spacer(),
              Center(
                child: Text("navegou a partir da notificação"),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
