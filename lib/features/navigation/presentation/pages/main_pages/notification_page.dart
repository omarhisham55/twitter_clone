import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/tab_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const XTabBar(
      length: 3,
      tabBarTitles: ["All", "Verified", "Mentions"],
      tabBarBody: [
        NotificationAll(),
        NotificationAll(),
        NotificationAll(),
      ],
    );
  }
}

class NotificationAll extends StatelessWidget {
  const NotificationAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Notification page",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
