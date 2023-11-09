import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';

class RoundedSearchBar extends StatelessWidget {
  final String hintText;
  const RoundedSearchBar({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyLarge,
        fillColor: XColors.extraShadeColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        contentPadding: const EdgeInsets.only(left: 20),
      ),
    );
  }
}
