import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';

import '../../../../core/utils/x_string.dart';

class BuildSignInButtons extends StatelessWidget {
  const BuildSignInButtons({super.key});

  _goToSignIn(_) => Navigator.pushNamed(_, Routes.signIn);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedButton(
          text: XRegistrationString.signIn,
          backgroundColor: Colors.transparent,
          textColor: XColors.secondaryColor,
          onPressed: () => _goToSignIn(context),
        ),
      ],
    );
  }
}
