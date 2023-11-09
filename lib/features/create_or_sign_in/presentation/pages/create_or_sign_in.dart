import 'package:flutter/material.dart';
import 'package:twitter_clone/config/screen_layout/responsive_screen_layout.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/create_or_sign_in/presentation/widgets/footer.dart';
import 'package:twitter_clone/features/create_or_sign_in/presentation/widgets/sign_in_button.dart';

import '../widgets/sign_up_buttons.dart';

class CreateOrSignIn extends StatelessWidget {
  const CreateOrSignIn({super.key});

  Widget _buildMobileBody(context) => Padding(
    padding: const EdgeInsets.all(30.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(XImages.xLogo),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              XRegistrationString.happeningNow,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Text(
            XRegistrationString.joinToday,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const BuildSignUpButtons(),
          const SizedBox(height: 70),
          Text(
            XRegistrationString.haveAccount,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const BuildSignInButtons(),
          const Footer(),
        ],
      ),
    ),
  );
  
  Widget _buildDesktopBody(context) => Padding(
    padding: const EdgeInsets.all(30.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Image.asset(XImages.xLogo)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        XRegistrationString.happeningNow,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Text(
                      XRegistrationString.joinToday,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const BuildSignUpButtons(),
                    const SizedBox(height: 70),
                    Text(
                      XRegistrationString.haveAccount,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const BuildSignInButtons(),
                  ],
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveScreenLayout(
        mobile: _buildMobileBody(context), 
        desktop: _buildDesktopBody(context),
      ),
    );
  }
}