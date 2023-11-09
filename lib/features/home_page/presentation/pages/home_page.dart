import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/tab_bar.dart';
import 'package:twitter_clone/features/home_page/presentation/pages/home_following.dart';
import 'package:twitter_clone/features/home_page/presentation/pages/home_for_you.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const XTabBar(
      length: 2,
      tabBarTitles: ["For you", "Following"],
      tabBarBody: [HomeForYou(), HomeFollowing()],
    );
  }
}
