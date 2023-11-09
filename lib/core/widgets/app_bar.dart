import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';
import 'package:twitter_clone/core/widgets/search_bar.dart';
import 'package:twitter_clone/features/navigation/presentation/cubit/navigation_cubit.dart';

createAccountAppBar(BuildContext context, int indexStep) => AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: indexStep == 1
            ? const Icon(Icons.close)
            : Icon(Icons.adaptive.arrow_back),
      ),
      title: Text("Step $indexStep of 5"),
    );

setUpAccountAppBar([bool showBackButton = false]) => AppBar(
      leading: showBackButton ? null : Container(),
      title: Image.asset(XImages.xLogo),
      centerTitle: true,
    );

signInAppBar(BuildContext _) => AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(_),
        child: const Icon(Icons.close),
      ),
      title: Image.asset(XImages.xLogo),
      centerTitle: true,
    );

SliverAppBar navigationAppbar(BuildContext _, int index) {
  List<Widget> actions = [];
  Widget title = Container();
  switch (index) {
    case 0:
      title = Image.asset(XImages.xLogo);
    case 1:
      title = const RoundedSearchBar(hintText: "Search X");
      actions = [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ];
    case 2:
      title = const Text("Communities");
      actions = [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.group_add_outlined))
      ];
    case 3:
      title = const Text("Notifications");
      actions = [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ];
    case 4:
      title = const RoundedSearchBar(hintText: "Search Direct messages");
      actions = [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      ];
  }
  return SliverAppBar(
    leading: GestureDetector(
      onTap: () => BlocProvider.of<NavigationCubit>(_).scaffoldKey.currentState!.openDrawer(),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: const CircleAvatar(),
      ),
    ),
    leadingWidth: 40,
    title: title,
    titleTextStyle: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.normal,
    ),
    centerTitle: index == 0 ? true : false,
    pinned: false,
    floating: true,
    snap: true,
    actions: actions,
  );
}
