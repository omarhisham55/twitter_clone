import 'package:flutter/material.dart';
import 'package:twitter_clone/features/messages/presentation/widgets/message.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Message(),
      itemCount: 20,
    );
  }
}
