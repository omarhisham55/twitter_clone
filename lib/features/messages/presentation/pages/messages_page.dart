import 'package:flutter/material.dart';
import 'package:twitter_clone/features/messages/presentation/pages/empty_messages_page.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyMessagesPage()
    );
  }
}
