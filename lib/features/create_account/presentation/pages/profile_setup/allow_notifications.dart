import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class AllowNotifications extends StatelessWidget {
  const AllowNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.notifications_none_rounded, color: XColors.secondaryColor, size: 50,),
              PageViewModel(
                title: "Turn on notifications", 
                subTitle: "Get the most out of X by staying up to date with what's happening.",
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RoundedButton(text: "Allow notifications", onPressed: (){}),
                    ),
                    SkipForNowButton(onPressed: () => Navigator.pushReplacementNamed(context, Routes.setLanguage)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}