import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';

class MessageTextField extends StatefulWidget {
  const MessageTextField({super.key});

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  final FocusNode focusNode = FocusNode();
  EdgeInsets padding = const EdgeInsets.only(left: 10);
  Icon? suffixIcon = const Icon(
    Icons.multitrack_audio_outlined,
    color: Colors.purple,
  );
  Widget? prefixIcon = Container(
    margin: const EdgeInsets.only(left: 10),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.image,
          color: XColors.shadeColor,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Icon(
            Icons.gif_box_outlined,
            color: XColors.shadeColor,
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          suffixIcon = null;
          prefixIcon = null;
          padding = const EdgeInsets.only(left: 10, bottom: 10, right: 10);
        });
      } else {
        setState(() {
          padding = const EdgeInsets.only(left: 10);
          suffixIcon = const Icon(
            Icons.multitrack_audio_outlined,
            color: Colors.purple,
          );
          prefixIcon = Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.image,
                color: XColors.shadeColor,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(
                  Icons.gif_box_outlined,
                  color: XColors.shadeColor,
                ),
              ),
            ],
          );
        });
      }
    });
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: XColors.extraShadeColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            focusNode: focusNode,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Start a message",
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              contentPadding: const EdgeInsets.only(left: 10, top: 12),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
            ),
          ),
          Visibility(
            visible: focusNode.hasFocus,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Icon(
                          Icons.image,
                          color: XColors.shadeColor,
                        ),
                      ),
                      const Icon(
                        Icons.gif_box_outlined,
                        color: XColors.shadeColor,
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.multitrack_audio_outlined,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
