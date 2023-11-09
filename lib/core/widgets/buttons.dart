import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? icon;
  final bool? isBold;
  final bool? smallButton;
  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = XColors.whiteColor,
    this.textColor = XColors.primaryColor,
    this.icon,
    this.isBold = false,
    this.smallButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        onPressed: onPressed,
        color: backgroundColor,
        shape: OutlineInputBorder(
            borderSide: BorderSide(
                width: backgroundColor == Colors.transparent ? 1 : 0,
                color: XColors.shadeColor),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: smallButton! ? MainAxisSize.min : MainAxisSize.max,
            children: [
              SizedBox(
                height: icon != null ? 25 : 0,
                child: icon,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: backgroundColor == XColors.secondaryColor ||
                              backgroundColor == Colors.transparent
                          ? XColors.whiteColor
                          : textColor,
                      fontWeight: isBold! ? FontWeight.bold : FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
