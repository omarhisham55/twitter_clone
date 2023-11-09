part of 'create_account_cubit.dart';

abstract class CreateAccountState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateAccountInitial extends CreateAccountState {}

class ChangeMonthState extends CreateAccountState{
  final String? selectedMonth;
  ChangeMonthState(this.selectedMonth);

  @override
  List<Object?> get props => [selectedMonth];
}

class AllowNextState extends CreateAccountState{
  final bool isAllowed;
  AllowNextState(this.isAllowed);

  @override
  List<Object?> get props => [isAllowed];
}

class ChangeObscureState extends CreateAccountState{
  final bool isObscure;
  ChangeObscureState(this.isObscure);

  @override
  List<Object?> get props => [isObscure];
}

class ShowMoreUsernames extends CreateAccountState{
  final int showMore;
  ShowMoreUsernames(this.showMore);
  
  @override
  List<Object?> get props => [showMore];
}

class LanguageSet extends CreateAccountState{}

class SetMainContentState extends CreateAccountState{
  final int selectedContent;

  SetMainContentState(this.selectedContent);
  @override
  List<Object> get props => [selectedContent];
}

class SetSideContentState extends CreateAccountState{
  final List<int> selectedContent;

  SetSideContentState(this.selectedContent);
  @override
  List<Object> get props => [selectedContent];
}