import 'package:flutter/material.dart';

class XTabBar extends StatefulWidget {
  final int length;
  final List<String> tabBarTitles;
  final List<Widget> tabBarBody;
  final bool? isScrollable;
  const XTabBar({
    super.key,
    required this.length,
    required this.tabBarTitles,
    required this.tabBarBody,
    this.isScrollable = false,
  });

  @override
  State<XTabBar> createState() => _XTabBarState();
}

class _XTabBarState extends State<XTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: TabBar(
            controller: _tabController,
            isScrollable: widget.isScrollable!,
            tabs: List.generate(
              widget.length,
              (index) => Tab(
                text: widget.tabBarTitles[index],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: List.generate(
          widget.length,
          (index) => widget.tabBarBody[index],
        ),
      ),
    );
  }
}
