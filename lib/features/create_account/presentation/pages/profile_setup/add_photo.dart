import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({super.key});

  Widget _bodyContent(_) => PageViewModel(
    title: "Pick a profile picture", 
    subTitle: "Have a favourite selfie? Upload it now", 
    body: Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: const AssetImage(XImages.emptyProfile),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: XColors.shadeColor,
              child: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.camera_enhance_rounded, color: XColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setUpAccountAppBar(),
      body: _bodyContent(context),
      bottomSheet: SkipForNowButton(
        onPressed: () => Navigator.pushReplacementNamed(context, Routes.setUsername),
        showElevation: true,
      ),
    );
  }
}