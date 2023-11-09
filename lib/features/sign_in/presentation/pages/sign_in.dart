import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/core/widgets/registration_buttons.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/sign_in/presentation/cubit/sign_in_cubit.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  Widget _buildContent(_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              XRegistrationString.signInToX,
              style: Theme.of(_).textTheme.headlineMedium,
            ),
            _externalSignIn(),
            dividerOr(_),
            XTextFormField(
              label: "Phone,email address, or username",
              controller: BlocProvider.of<SignInCubit>(_).signInController,
            ),
            RoundedButton(
              text: "Next",
              onPressed: () => Navigator.pushNamedAndRemoveUntil(_, Routes.navigation, (route) => false),
            ),
            RoundedButton(
              text: "Forgot password",
              onPressed: () => _forgotPassword(_),
              backgroundColor: Colors.transparent,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: Theme.of(_).textTheme.bodyLarge,
                  ),
                  Text(
                    "Sign up",
                    style: Theme.of(_)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: XColors.secondaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _externalSignIn() => const Column(
        children: [
          GoogleSignIn(),
          AppleSignIn(),
        ],
      );

  _forgotPassword(_) => Navigator.pushNamed(_, Routes.forgotPassword);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(context),
      body: _buildContent(context),
    );
  }
}
