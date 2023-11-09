import 'package:flutter/material.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  Widget _buildContent(_) => PageViewModel(
        title: "Find your X account",
        subTitle:
            "Enter the email, phone number or username associated with your account to change your password.",
        body: XTextFormField(
          label: "Email address, phone number or username",
          controller: TextEditingController(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: signInAppBar(context),
      body: _buildContent(context),
    );
  }
}
