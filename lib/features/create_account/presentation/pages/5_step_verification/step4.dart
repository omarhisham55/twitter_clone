import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/page_view_model.dart';

class CreateStep4 extends StatelessWidget {
  const CreateStep4({super.key});

  Widget _bodyContent(_) => PageViewModel(
    title: "Verification", 
    subTitle: "Code was sent to ${BlocProvider.of<CreateAccountCubit>(_).emailController.text}", 
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        XTextFormField(
          label: "",
          controller: BlocProvider.of<CreateAccountCubit>(_)
              .verificationController,
          auotFocus: true,
          onChanged: (value) => BlocProvider.of<CreateAccountCubit>(_).allowStep5(),    
        ),
        GestureDetector(
          child: Text(
            "didn't receive the code?",
            style: Theme.of(_).textTheme.bodyLarge!.copyWith(
                decoration: TextDecoration.underline,
                color: XColors.secondaryColor),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAccountAppBar(context, 4),
      body: _bodyContent(context),
      bottomSheet: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return NextBottomButton(
            backgroundColor: BlocProvider.of<CreateAccountCubit>(context).buttonVerifyColor,
            onPressed: () => BlocProvider.of<CreateAccountCubit>(context).isVerified
              ? Navigator.pushNamed(context, Routes.createAccountStep5)
              : null,
          );
        },
      ),
    );
  }
}
