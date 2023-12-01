import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(Icons.notifications,size: 150,)
          ),
          Center(
            child: Text(
              'No Notifications',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'You have no notifications now',
              style: TextStyle(fontSize: 16),
            ),
          ),],
      )
    );
  }
}
