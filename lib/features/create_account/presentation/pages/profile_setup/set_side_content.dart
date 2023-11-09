import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/content_list_view.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class SetSideContent extends StatelessWidget {
  const SetSideContent({super.key});

  Widget _bodyContent(_) => PageViewModel(
    title: "What do you want to see on X", 
    subTitle: "Intrests are used to personalise your experience and will be visible on your profile.", 
    body: BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        CreateAccountCubit get = CreateAccountCubit().get(_);
        return Container(
          margin: const EdgeInsets.only(bottom: 90),
          child: ContentListView(
            itemCount: get.selectedContents.length,
            itemTitle: get.selectedContents,
          ),
        );
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setUpAccountAppBar(true),
      body: _bodyContent(context),
      bottomSheet: NextBottomButton(
        showElevation: true,
        onPressed: () => Navigator.pushNamedAndRemoveUntil(context, Routes.navigation, (route) => false),
      ),
    );
  }
}