import 'package:flutter/material.dart';

class IconWithChild extends StatefulWidget {
  final IconData icon;
  final String text;
  final double? iconSize;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  const IconWithChild({
    super.key,
    required this.icon,
    required this.text,
    this.iconSize = 20,
    this.textStyle,
    this.padding,
  });

  @override
  State<IconWithChild> createState() => _IconWithChildState();
}

class _IconWithChildState extends State<IconWithChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: widget.iconSize,
          ),
          Container(
            margin: const EdgeInsets.only(left: 3),
            child: Text(
              widget.text,
              style: widget.textStyle ?? Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
