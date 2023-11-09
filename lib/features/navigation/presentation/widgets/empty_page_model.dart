import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';

class EmptyPageViewModel extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final Function() onButtonPress;
  const EmptyPageViewModel({
    super.key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onButtonPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              content,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: XColors.shadeColor),
            ),
          ),
          RoundedButton(
            text: buttonText,
            isBold: true,
            smallButton: true,
            onPressed: onButtonPress,
          ),
        ],
      ),
    );
  }
}
