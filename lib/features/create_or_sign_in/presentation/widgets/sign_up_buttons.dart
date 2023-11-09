import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/core/widgets/registration_buttons.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/terms_and_policy.dart';

class BuildSignUpButtons extends StatelessWidget {
  const BuildSignUpButtons({super.key});

  Widget _externalSignUp() => const Column(
        children: [
          GoogleSignUp(),
          AppleSignUp(),
        ],
      );

  Widget _createAccount(context) => CreateAccountButton(
        onPressed: () => _goToCreateAccount(context),
        backgroundColor: XColors.secondaryColor,
      );

  _goToCreateAccount(context) =>
      Navigator.pushNamed(context, Routes.createAccountStep1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _externalSignUp(),
        dividerOr(context),
        _createAccount(context),
        mainTermsAndPolicy(context),
      ],
    );
  }
}
