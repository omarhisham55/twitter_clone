import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/check_box.dart';

import '../../../../../config/routes/x_routes.dart';
import '../../../../../core/utils/x_colors.dart';
import '../../../../../core/utils/x_string.dart';
import '../../../../../core/widgets/bottom_sheet.dart';
import '../../../../../core/widgets/app_bar.dart';
import '../../widgets/terms_and_policy.dart';


class CreateStep2 extends StatelessWidget {
  const CreateStep2({super.key});

  Widget _buildStep2Body(_) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Text(
            XRegistrationString.step2Title,
            style: Theme.of(_).textTheme.headlineMedium,
          ),
        ),
        Text(
          XRegistrationString.step2Subtitle,
          style: Theme.of(_).textTheme.titleLarge,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  XRegistrationString.step2content,
                  style: Theme.of(_).textTheme.bodyMedium!.copyWith(
                    color: XColors.whiteColor,
                  ),
                ),
              ),
              const XCheckBox(),
            ],
          ),
        ),
        termsAndPolicy2(_),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAccountAppBar(context, 2),
      body: _buildStep2Body(context),
      bottomSheet: NextBottomButton(
        onPressed: () => Navigator.pushNamed(context, Routes.createAccountStep3),
      ),
    );
  }
}