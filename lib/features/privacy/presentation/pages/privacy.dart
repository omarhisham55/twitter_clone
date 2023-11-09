import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/features/privacy/presentation/widgets/find_privacy.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  Widget _bodyContent(_) =>  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Privacy",
          style: Theme.of(_).textTheme.headlineSmall,
        ),
        const FindPrivacy(
          title: XPrivacyString.emailPrivacy, 
          content: XPrivacyString.emailPrivacyContent,
        ),
        const FindPrivacy(
          title: XPrivacyString.phonePrivacy, 
          content: XPrivacyString.phonePrivacyContent,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.adaptive.arrow_back)),
        title: Image.asset(XImages.xLogo),
        centerTitle: true,
      ),
      body: _bodyContent(context),
      bottomSheet: DoneBottomButton(onPressed: () => Navigator.pop(context)),
    );
  }
}