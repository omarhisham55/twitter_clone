import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/community_page.dart';
import 'package:twitter_clone/features/home_page/presentation/pages/home_page.dart';
import 'package:twitter_clone/features/messages/presentation/pages/messages_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/notification_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/search_page.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationInitial(0));

  NavigationCubit get(_) => BlocProvider.of<NavigationCubit>(_);
  ScrollController scrollController = ScrollController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> navigationRoutes = const[
    HomePage(),
    SearchPage(),
    CommunityPage(),
    NotificationPage(),
    MessagesPage(),
  ];

  int currentIndex = 0;
  changePage(int index){
    currentIndex = index;
    emit(ChangePageState(currentIndex));
  }
}
