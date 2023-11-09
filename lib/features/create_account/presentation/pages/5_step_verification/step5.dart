import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class CreateStep5 extends StatelessWidget {
  const CreateStep5({super.key});

  Widget _buildContent(_) => PageViewModel(
    title: "You'll need a password", 
    subTitle: "Make sure it's 8 characters or more", 
    body: BlocBuilder<CreateAccountCubit, CreateAccountState>(
      builder: (context, state) {
        return XTextFormField(
          label: "Password",
          controller:
              BlocProvider.of<CreateAccountCubit>(_).passwordController,
          auotFocus: true,
          isObscure: BlocProvider.of<CreateAccountCubit>(_).isObscure,
          suffix: IconButton(
            onPressed: () =>
                BlocProvider.of<CreateAccountCubit>(_).changeObscure(),
            icon: BlocProvider.of<CreateAccountCubit>(_).suffixIcon,
            color: XColors.shadeColor,
          ),
          onChanged: (value) =>
              BlocProvider.of<CreateAccountCubit>(_).allowNextStep(),
        );
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAccountAppBar(context, 5),
      body: _buildContent(context),
      bottomSheet: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return NextBottomButton(
            backgroundColor: BlocProvider.of<CreateAccountCubit>(context).buttonPasswordColor,
            onPressed: () => BlocProvider.of<CreateAccountCubit>(context).isPassVerified
              ? Navigator.pushNamedAndRemoveUntil(context, Routes.addPhoto, (route) => route.settings.name == Routes.createOrSignInRoute)
              : null,
          );
        },
      ),
    );
  }
}
