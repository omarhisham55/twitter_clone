import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/icon_child.dart';
import 'package:twitter_clone/features/home_page/presentation/widgets/post_details.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  Widget _postHeader(_, {isReply = false}) => Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "name",
                  style: Theme.of(_)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: XColors.whiteColor),
                ),
              ),
              Text(
                "@username",
                style: Theme.of(_).textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                ". 1d",
                style: Theme.of(_).textTheme.bodyLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.adaptive.more),
              )
            ],
          ),
          isReply!
              ? Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Replying to",
                        style: Theme.of(_).textTheme.bodyLarge,
                      ),
                    ),
                    Text(
                      "@Username",
                      style: Theme.of(_)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: XColors.secondaryColor),
                    ),
                  ],
                )
              : Container(),
        ],
      );

  Widget _postBody(_) => Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "text",
                style: Theme.of(_)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: XColors.whiteColor),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      );

  Widget _postFooter(_) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconWithChild(icon: Icons.comment_outlined, text: "12k"),
          IconWithChild(icon: Icons.repeat_rounded, text: "12k"),
          IconWithChild(icon: Icons.favorite_border, text: "12k"),
          Icon(Icons.share_outlined),
        ],
      );

  Widget _rawPost(_, {isReply = false}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _postHeader(_, isReply: isReply),
                  _postBody(_),
                  _postFooter(_),
                ],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        Routes.postDetails,
        arguments: PostDetailsArguments(
          postBody: _postBody(context),
          postComment: _rawPost(context, isReply: true),
        ),
      ),
      child: _rawPost(context),
    );
  }
}
