import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/divider.dart';
import 'package:twitter_clone/core/widgets/icon_child.dart';

class XDrawer extends StatelessWidget {
  const XDrawer({super.key});

  Widget _drawerHeader(_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(),
          Text(
            "Name",
            style: Theme.of(_)
                .textTheme
                .bodyLarge!
                .copyWith(color: XColors.whiteColor, height: 2),
          ),
          Text(
            "@username",
            style: Theme.of(_).textTheme.bodyMedium!.copyWith(height: 1.2),
          ),
          Row(
            children: [
              Text(
                "166",
                style: Theme.of(_)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: XColors.whiteColor, height: 2),
              ),
              Text(
                " Following  ",
                style: Theme.of(_).textTheme.bodyMedium!.copyWith(height: 2),
              ),
              Text(
                "166",
                style: Theme.of(_)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: XColors.whiteColor, height: 2),
              ),
              Text(
                " Followers",
                style: Theme.of(_).textTheme.bodyMedium!.copyWith(height: 2),
              ),
            ],
          ),
        ],
      );

  Widget _drawerBody(_) => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithChild(
              icon: Icons.person_4_outlined,
              text: "Profile",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
            IconWithChild(
              icon: Icons.one_x_mobiledata,
              text: "Premium",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
            IconWithChild(
              icon: Icons.bookmark_border,
              text: "Bookmarks",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
            IconWithChild(
              icon: Icons.list_alt_rounded,
              text: "Lists",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
            IconWithChild(
              icon: Icons.stream_outlined,
              text: "Spaces",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
            IconWithChild(
              icon: Icons.money,
              text: "Monetisation",
              iconSize: 30,
              textStyle: Theme.of(_).textTheme.headlineSmall,
            ),
          ],
        ),
      );

  Widget _drawerFooter(_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Professional Tools",
            style: Theme.of(_)
                .textTheme
                .bodyLarge!
                .copyWith(color: XColors.whiteColor, fontSize: 20),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              "Settings & Support",
              style: Theme.of(_)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: XColors.whiteColor, fontSize: 20),
            ),
          ),
          const Icon(Icons.brightness_2_outlined)
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _drawerHeader(context),
            shadedDivider(height: 50),
            _drawerBody(context),
            shadedDivider(height: 50),
            _drawerFooter(context),
          ],
        ),
      ),
    );
  }
}
