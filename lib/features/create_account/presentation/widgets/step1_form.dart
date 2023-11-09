import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/core/widgets/text_form_field.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';

class Step1Form extends StatelessWidget {
  final bool? focusName;
  final bool? focusEmail;
  const Step1Form({super.key, this.focusName, this.focusEmail});

  List<String> getMonths() {
    List<String> months = [];
    for (int i = 1; i <= 12; i++) {
      String monthName =
          DateFormat('MMMM').format(DateTime(DateTime.now().year, i));
      months.add(monthName);
    }
    return months;
  }

  List<String> getDaysInMonth(String? month) {
    if (month == null) return [""];
    DateTime date = DateFormat('MMMM').parse(month);
    int numberOfDays = DateTime(date.year, date.month + 1, 0).day;
    return List.generate(numberOfDays, (index) => (index + 1).toString());
  }

  List<String> getYears(){
    return List.generate((DateTime.now().year - 1960), (index) => (1960 + index).toString());
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: BlocProvider.of<CreateAccountCubit>(context).formController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          XTextFormField(
            label: "Name",
            controller: BlocProvider.of<CreateAccountCubit>(context).nameController,
            maxLength: 50,
            onChanged: (value) => BlocProvider.of<CreateAccountCubit>(context).allowStep2(),
            auotFocus: focusName,
          ),
          XTextFormField(
            label: "Email", 
            controller: BlocProvider.of<CreateAccountCubit>(context).emailController,
            onChanged: (value) => BlocProvider.of<CreateAccountCubit>(context).allowStep2(),
            auotFocus: focusEmail,
          ),
          Text(
            XRegistrationString.dateOfBirth,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Text(
              XRegistrationString.dateOfBirthPublicity,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: DropDownFormField(
                  label: "Month",
                  list: getMonths(),
                  selectedValue: BlocProvider.of<CreateAccountCubit>(context).selectedMonthValue,
                ),
              ),
              Expanded(
                flex: 1,
                child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
                  builder: (context, state) {
                    return DropDownFormField(
                      label: "Day",
                      list: getDaysInMonth(
                        BlocProvider.of<CreateAccountCubit>(context).selectedMonthValue
                      ),
                      enableMargin: true,
                      selectedValue: BlocProvider.of<CreateAccountCubit>(context).selectedDayValue,
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: DropDownFormField(
                  label: "Year",
                  list: getYears(),
                  selectedValue: BlocProvider.of<CreateAccountCubit>(context).selectedYearValue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
