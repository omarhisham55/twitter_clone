import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';

Widget shadedDivider({double height = 10.0}) => Divider(
      color: XColors.shadeColor,
      thickness: 0.2,
      height: height,
    );

Widget dividerOr(_) => Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: shadedDivider(height: 3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'or',
              style: Theme.of(_).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: shadedDivider(height: 3),
          ),
        ],
      ),
    );
