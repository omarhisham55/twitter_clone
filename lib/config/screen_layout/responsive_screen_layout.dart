import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twitter_clone/core/utils/x_string.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const ResponsiveScreenLayout({super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, screenSize){
        switch (screenSize.deviceScreenType) {
          case DeviceScreenType.desktop:
          case DeviceScreenType.tablet:
            return desktop;
          case DeviceScreenType.mobile:
            return mobile;
          default:
            break;
        }
        return Center(
          child: Text(
            XStrings.responsiveFail,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        );
      }
    );
  }
}