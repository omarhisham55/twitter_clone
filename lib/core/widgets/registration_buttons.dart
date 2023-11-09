import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';

class CreateAccountButton extends StatelessWidget {
  final Function() onPressed;
  final Color? backgroundColor;
  const CreateAccountButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = XColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: XRegistrationString.signUp, 
      onPressed: onPressed,
      backgroundColor: backgroundColor,
    );
  }
}

class GoogleSignUp extends StatelessWidget {
  const GoogleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: XRegistrationString.googleSignUp,
      icon: Image.asset(XIcons.googleIcon),
      onPressed: (){},
    );
  }
}

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: XRegistrationString.googleSignIn,
      icon: Image.asset(XIcons.googleIcon),
      onPressed: (){},
    );
  }
}

class AppleSignUp extends StatelessWidget {
  const AppleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: XRegistrationString.appleSignUp,
      icon: Image.asset(XIcons.appleIcon),
      onPressed: (){},
    );
  }
}

class AppleSignIn extends StatelessWidget {
  const AppleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: XRegistrationString.appleSignIn,
      icon: Image.asset(XIcons.appleIcon),
      onPressed: (){},
    );
  }
}

