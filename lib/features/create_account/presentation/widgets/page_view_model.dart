import 'package:flutter/material.dart';

class PageViewModel extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget body;
  const PageViewModel({
    super.key,
    required this.title,
    required this.subTitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 15),
              child: Text(
                subTitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            body
          ],
        ),
      ),
    );
  }
}
