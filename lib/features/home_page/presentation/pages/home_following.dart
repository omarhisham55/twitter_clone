import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/navigation/presentation/widgets/empty_page_model.dart';

class HomeFollowing extends StatelessWidget {
  const HomeFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoFollowingPage();
  }
}

class NoFollowingPage extends StatelessWidget {
  const NoFollowingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyPageViewModel(
      title: XMainPagesString.emptyHomeTitle,
      content: XMainPagesString.emptyHomeContent,
      buttonText: XMainPagesString.letsGoButton,
      onButtonPress: () {},
    );
  }
}
