import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Community page",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
