import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/features/navigation/presentation/cubit/navigation_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "",),
    BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "",),
    BottomNavigationBarItem(icon: Icon(Icons.people_outlined), label: "",),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: "",),
    BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: "",),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        NavigationCubit get = NavigationCubit().get(context);
        return BottomNavigationBar(
          currentIndex: get.currentIndex,
          onTap: (index) => get.changePage(index),
          items: _items,
        );
      },
    );
  }
}
