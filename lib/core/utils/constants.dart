import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';

showSignUpDialogError(BuildContext context) => showAdaptiveDialog(
  context: context, 
  builder: (context) => Dialog(
    backgroundColor: XColors.primaryColor,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              XRegistrationString.signUpFailed,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoundedButton(
            text: "close", 
            onPressed: (){},
          )
        ],
      ),
    ),
  ),
);