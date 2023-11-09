import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/navigation/presentation/widgets/empty_page_model.dart';

class EmptyMessagesPage extends StatelessWidget {
  const EmptyMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyPageViewModel(
      title: XMainPagesString.emptyMessagesTitle,
      content: XMainPagesString.emptyMessagesContent,
      buttonText: XMainPagesString.writeAMessageButton,
      onButtonPress: () {},
    );
  }
}
