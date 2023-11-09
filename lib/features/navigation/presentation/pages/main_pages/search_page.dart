import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/tab_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const XTabBar(
      length: 5,
      isScrollable: true,
      tabBarTitles: ["For you", "Trending", "News", "Sports", "Entertainment"],
      tabBarBody: [
        SearchForYou(),
        SearchForYou(),
        SearchForYou(),
        SearchForYou(),
        SearchForYou(),
      ],
    );
  }
}

class SearchForYou extends StatelessWidget {
  const SearchForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Search page",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
