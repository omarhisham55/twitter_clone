import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/step3_check_form.dart';

import '../../../../../config/routes/x_routes.dart';
import '../../../../../core/utils/x_string.dart';
import '../../../../../core/widgets/bottom_sheet.dart';

class CreateStep3 extends StatelessWidget {
  const CreateStep3({super.key});

  Widget _buildStep3Body(_) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Text(
            XRegistrationString.creatYourAccount,
            style: Theme.of(_).textTheme.headlineSmall,
          ),
        ),
        const Step3Form(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAccountAppBar(context, 3),
      body: _buildStep3Body(context),
      bottomSheet: SignUpBottomButton(onPressed: () => Navigator.pushNamed(context, Routes.createAccountStep4)),
    );
  }
}