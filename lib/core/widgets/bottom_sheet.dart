import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/terms_and_policy.dart';

import 'buttons.dart';

class NextBottomButton extends StatelessWidget {
  final Function() onPressed;
  final Color? backgroundColor;
  final bool? showElevation;
  const NextBottomButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = XColors.whiteColor,
    this.showElevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: showElevation ?? false
              ? const Border(
                  top: BorderSide(width: 1, color: XColors.whiteColor))
              : const Border.fromBorderSide(BorderSide.none)),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedButton(
            text: "Next",
            onPressed: onPressed,
            backgroundColor: backgroundColor,
            textColor: backgroundColor == Colors.transparent
                ? XColors.whiteColor
                : XColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

class DoneBottomButton extends StatelessWidget {
  final Function() onPressed;
  const DoneBottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedButton(
            text: "Done",
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}

class SignUpBottomButton extends StatelessWidget {
  final Function() onPressed;
  const SignUpBottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          termsAndPolicy3(context),
          RoundedButton(
            text: "Sign up",
            onPressed: onPressed,
            textColor: XColors.whiteColor,
            backgroundColor: XColors.secondaryColor,
            isBold: true,
          )
        ],
      ),
    );
  }
}

class SkipForNowButton extends StatelessWidget {
  final Function() onPressed;
  final bool? showElevation;
  const SkipForNowButton(
      {super.key, required this.onPressed, this.showElevation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: showElevation ?? false
              ? const Border(
                  top: BorderSide(width: 1, color: XColors.whiteColor))
              : const Border.fromBorderSide(BorderSide.none)),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedButton(
            text: "Skip for now",
            onPressed: onPressed,
            textColor: XColors.whiteColor,
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
