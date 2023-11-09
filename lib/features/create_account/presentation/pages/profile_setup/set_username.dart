import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class SetUserName extends StatelessWidget {
  const SetUserName({super.key});

  Widget _bodyContent(_) => PageViewModel(
        title: "What should we call you?",
        subTitle: "Your @username is unique. You can always change it later.",
        body: BlocBuilder<CreateAccountCubit, CreateAccountState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                XTextFormField(
                  label: "Username",
                  controller:
                      BlocProvider.of<CreateAccountCubit>(_).usernameController,
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "@",
                      style: TextStyle(
                          color: XColors.secondaryColor, fontSize: 30),
                    ),
                  ),
                ),
                Wrap(
                  children: List.generate(
                    BlocProvider.of<CreateAccountCubit>(_).showMore,
                    (index) => Text(
                      "@usernames ",
                      style: Theme.of(_).textTheme.titleSmall!.copyWith(
                          color: XColors.secondaryColor, height: 1.5),
                    ),
                  ),
                ),
                Visibility(
                  visible: BlocProvider.of<CreateAccountCubit>(_).showMore < 3,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: GestureDetector(
                      onTap: () => BlocProvider.of<CreateAccountCubit>(_)
                          .showMoreUsernames(),
                      child: Text(
                        "show more",
                        style: Theme.of(_)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: XColors.secondaryColor),
                      ),
                    ),
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
      bottomSheet: SkipForNowButton(
        onPressed: () => Navigator.pushReplacementNamed(context, Routes.allowNotifications),
      ),
    );
  }
}
