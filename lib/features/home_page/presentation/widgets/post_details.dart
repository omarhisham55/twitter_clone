import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';

class PostDetails extends StatelessWidget {
  final Widget postBody;
  final Widget? postComment;
  const PostDetails({super.key, required this.postBody, this.postComment});

  Widget _postHeader(_) => Row(
        children: [
          const CircleAvatar(),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "name",
                  style: Theme.of(_)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: XColors.whiteColor),
                ),
                Text(
                  "@username",
                  style: Theme.of(_).textTheme.bodyLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.adaptive.more),
          )
        ],
      );

  Widget _postFooter(_) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3:30 pm . 06 Nov 23",
              style: Theme.of(_).textTheme.bodyMedium,
            ),
            shadedDivider(height: 20),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      "5.2k ",
                      style: Theme.of(_)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: XColors.whiteColor),
                    ),
                    Text(
                      "Reposts    ",
                      style: Theme.of(_).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "5.2k ",
                      style: Theme.of(_)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: XColors.whiteColor),
                    ),
                    Text(
                      "Quotes    ",
                      style: Theme.of(_).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "5.2k ",
                      style: Theme.of(_)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: XColors.whiteColor),
                    ),
                    Text(
                      "Likes",
                      style: Theme.of(_).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            shadedDivider(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.comment_outlined, color: XColors.shadeColor),
                Icon(Icons.repeat_rounded, color: XColors.shadeColor),
                Icon(Icons.favorite_border, color: XColors.shadeColor),
                Icon(Icons.share_outlined, color: XColors.shadeColor),
              ],
            ),
            shadedDivider(height: 20),
          ],
        ),
      );

  Widget _bodyContent(_) => SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _postHeader(_),
              postBody,
              _postFooter(_),
              _commentSection(_),
            ],
          ),
        ),
      );

  Widget _commentSection(_) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => postComment,
        separatorBuilder: (context, index) => shadedDivider(),
        itemCount: 5,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post"),
      ),
      body: _bodyContent(context),
      bottomSheet: const XCommentFormField(hintText: "Post your reply"),
    );
  }
}

class PostDetailsArguments {
  final Widget postBody;
  final Widget? postComment;

  PostDetailsArguments({required this.postBody, this.postComment});
}
