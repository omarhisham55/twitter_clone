import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/features/home_page/presentation/widgets/posts.dart';

class HomeForYou extends StatelessWidget {
  const HomeForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => const Post(),
        separatorBuilder: (context, index) => shadedDivider(),
        itemCount: 10,
      ),
    );
  }
}