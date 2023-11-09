import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';

class ConnectionErrorHomePage extends StatelessWidget {
  const ConnectionErrorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Oops, something went wrong",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            "But don't worry - it's not your fault.",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: XColors.shadeColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 100,
            child: RoundedButton(
              text: "Retry",
              isBold: true,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
