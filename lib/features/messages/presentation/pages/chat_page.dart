import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/features/messages/presentation/widgets/message_text_field.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final AppBar _appBar = AppBar(
    title: const Row(
      children: [
        CircleAvatar(),
        SizedBox(width: 10),
        Text(
          "Name",
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.info_outline),
        ),
      ),
    ],
  );

  Widget _bodyHeader(_) => Column(
        children: [
          const CircleAvatar(radius: 35),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Name",
              style: Theme.of(_).textTheme.titleMedium,
            ),
          ),
          Text(
            "@username",
            style: Theme.of(_)
                .textTheme
                .titleMedium!
                .copyWith(color: XColors.shadeColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "100 Followers",
              style: Theme.of(_)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: XColors.shadeColor),
            ),
          ),
          shadedDivider(height: 30),
        ],
      );

  Widget _createOthersChatbox(_) => Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: XColors.extraShadeColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Chat",
                    style: Theme.of(_).textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "10:00 pm",
                  style: Theme.of(_).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      );
  Widget _createUserChatbox(_) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: XColors.secondaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Chat shakalala",
                    style: Theme.of(_).textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "10:00 pm",
                  style: Theme.of(_).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      );

  Widget _bodyContent(_) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _bodyHeader(_),
              _createUserChatbox(_),
              _createOthersChatbox(_),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _bodyContent(context),
      bottomSheet: const MessageTextField(),
    );
  }
}
