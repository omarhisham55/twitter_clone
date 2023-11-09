import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:twitter_clone/features/navigation/presentation/widgets/bottom_nav_bar.dart';
import 'package:twitter_clone/features/navigation/presentation/widgets/drawer.dart';

class NavigationMain extends StatelessWidget {
  const NavigationMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        NavigationCubit get = NavigationCubit().get(context);
        return SafeArea(
          child: Scaffold(
            key: get.scaffoldKey,
            drawer: const XDrawer(),
            body: NestedScrollView(
              controller: get.scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                navigationAppbar(context, get.currentIndex),
              ],
              body: get.navigationRoutes[get.currentIndex],
            ),
            bottomNavigationBar: const BottomNavBar(),
          ),
        );
      },
    );
  }
}
