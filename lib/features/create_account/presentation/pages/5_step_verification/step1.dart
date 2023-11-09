import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/core/widgets/app_bar.dart';
import 'package:twitter_clone/core/widgets/bottom_sheet.dart';
import 'package:twitter_clone/features/create_account/presentation/widgets/step1_form.dart';

class CreateStep1 extends StatelessWidget {
  final bool? focusName;
  final bool? focusEmail;
  const CreateStep1({super.key, this.focusName, this.focusEmail});

  Widget _buildStep1Body(_) => SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Text(
              XRegistrationString.creatYourAccount,
              style: Theme.of(_).textTheme.headlineSmall,
            ),
          ),
          Step1Form(
            focusName: focusName,
            focusEmail: focusEmail, 
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: createAccountAppBar(context, 1),
      body: _buildStep1Body(context),
      bottomSheet: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return NextBottomButton(
            backgroundColor: BlocProvider.of<CreateAccountCubit>(context).buttonColor,
            onPressed: () =>
              BlocProvider.of<CreateAccountCubit>(context).isAllowed 
              ? Navigator.pushNamed(context, Routes.createAccountStep2)
              : null,
          );
        },
      ),
    );
  }
}
