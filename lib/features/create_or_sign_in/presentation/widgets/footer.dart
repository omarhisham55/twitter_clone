import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        XRegistrationString.footer.length, 
        (index) => GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              XRegistrationString.footer[index],
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}