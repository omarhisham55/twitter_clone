import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/buttons.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/content_grid_view.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class SetMainContent extends StatelessWidget {
  const SetMainContent({super.key});

  Widget _bodyContent(_) => PageViewModel(
        title: "What do you want to see on X?",
        subTitle:
            "Select at least 3 intrests to personalise your X experience. They will be visible on your profile.",
        body: BlocBuilder<CreateAccountCubit, CreateAccountState>(
          builder: (context, state) {
            CreateAccountCubit get = CreateAccountCubit().get(_);
            return Column(
              children: [
                ContentGridView(
                  itemCount: XMainContentString.contentTitles.length,
                  itemBody: XMainContentString.contentTitles,
                  borderColor: get.selectedColors,
                  onTap: (index) => get.changeSelectedContent(index),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: XColors.whiteColor),
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          get.selectedContent < 3 
                           ? "${get.selectedContent} of 3 selected"
                           : "Great Job",
                          style: Theme.of(_).textTheme.bodyLarge,
                        ),
                      ),
                      RoundedButton(
                        text: "Next",
                        onPressed: () => get.selectedContent >= 3
                          ? Navigator.pushNamed(context, Routes.setSideContent)
                          : null,
                        backgroundColor: get.selectedContent >= 3
                          ? XColors.whiteColor
                          : XColors.shadeColor,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setUpAccountAppBar(),
      body: _bodyContent(context),
    );
  }
}
