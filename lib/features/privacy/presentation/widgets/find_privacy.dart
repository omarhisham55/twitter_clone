import 'package:flutter/material.dart';

import '../../../../core/widgets/check_box.dart';

class FindPrivacy extends StatelessWidget {
  final String title;
  final String content;
  const FindPrivacy({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const XCheckBox(),
        ],
      ),
    );
  }
}