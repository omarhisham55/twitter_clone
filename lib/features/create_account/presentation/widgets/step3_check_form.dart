import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/x_routes.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../cubit/create_account_cubit.dart';
import '../pages/5_step_verification/step1.dart';

class Step3Form extends StatelessWidget {
  const Step3Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: BlocProvider.of<CreateAccountCubit>(context).formCheckController,
      child: Column(
        children: [
          XTextFormField(
            label: "Name",
            controller: BlocProvider.of<CreateAccountCubit>(context).nameController,
            readOnly: true,
            onTap: () => Navigator.pushAndRemoveUntil(
              context, 
              MaterialPageRoute(
                builder: (context) => const CreateStep1(focusName: true),
              ), 
              (route) => route.settings.name == Routes.createOrSignInRoute,
            ),
          ),
          XTextFormField(
            label: "Email",
            controller: BlocProvider.of<CreateAccountCubit>(context).emailController,
            readOnly: true,
            onTap: () => Navigator.pushAndRemoveUntil(
              context, 
              MaterialPageRoute(
                builder: (context) => const CreateStep1(focusEmail: true),
              ), 
              (route) => route.settings.name == Routes.createOrSignInRoute,
            ),
          ),
          XTextFormField(
            label: "Date of birth",
            controller: BlocProvider.of<CreateAccountCubit>(context).emailController,
            readOnly: true,
            onTap: () => Navigator.pushAndRemoveUntil(
              context, 
              MaterialPageRoute(
                builder: (context) => const CreateStep1(),
              ), 
              (route) => route.settings.name == Routes.createOrSignInRoute,
            ),
          ),
        ],
      ),
    );
  }
}