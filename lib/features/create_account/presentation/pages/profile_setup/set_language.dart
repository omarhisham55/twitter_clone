import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

// ignore: must_be_immutable
class SetLanguage extends StatelessWidget {
  SetLanguage({super.key});

  final GroupController controller = GroupController();

  List<String> languages = ["English", "Arabic", "French"];

  Widget _bodyContent(_) => PageViewModel(
        title: "Which language do you speak?",
        subTitle:
            "You'll be able to see posts, people and trends in any language you choose",
        body: SimpleGroupedCheckbox(
          controller: controller,
          itemsTitle: languages,
          values: languages,
          onItemSelected: (selected) =>
              BlocProvider.of<CreateAccountCubit>(_).setLang(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setUpAccountAppBar(),
      body: _bodyContent(context),
      bottomSheet: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return NextBottomButton(
            onPressed: () => BlocProvider.of<CreateAccountCubit>(context).languageSet
              ? Navigator.pushReplacementNamed(context, Routes.setMainContent)
              : null,
            backgroundColor: BlocProvider.of<CreateAccountCubit>(context).languageSet
              ? XColors.whiteColor
              : XColors.shadeColor,
          );
        },
      ),
    );
  }
}
