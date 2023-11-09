import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/core/utils/x_colors.dart';
import 'package:twitter_clone/core/utils/x_string.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());

  CreateAccountCubit get(context) => BlocProvider.of<CreateAccountCubit>(context);

  GlobalKey formController = GlobalKey<FormState>();
  GlobalKey formCheckController = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String? selectedMonthValue;
  changeMonth() {
    selectedDayValue = "1";
    emit(ChangeMonthState(selectedMonthValue));
  }
  
  String? selectedDayValue;
  String? selectedYearValue;

  Color buttonColor = XColors.shadeColor;
  bool isAllowed = false;

  allowStep2(){
    if(nameController.text.isNotEmpty && emailController.text.isNotEmpty &&
       selectedMonthValue != null && selectedDayValue != null && selectedYearValue != null){
      buttonColor = XColors.whiteColor;
      isAllowed = true;
    }
    else{
      buttonColor = XColors.shadeColor;
      isAllowed = false;
    }
    emit(AllowNextState(isAllowed));
  }

  TextEditingController verificationController = TextEditingController();

  Color buttonVerifyColor = XColors.shadeColor;
  bool isVerified = false;

  allowStep5(){
    emit(AllowNextState(isVerified));
    if(verificationController.text.isNotEmpty){
      buttonVerifyColor = XColors.whiteColor;
      isVerified = true;
    }else{
      buttonVerifyColor = XColors.shadeColor;
      isVerified = false;
    }
    emit(AllowNextState(isVerified));
  }

  TextEditingController passwordController = TextEditingController();

  Color buttonPasswordColor = XColors.shadeColor;
  bool isPassVerified = false;
  bool isObscure = false;
  Icon suffixIcon = const Icon(Icons.remove_red_eye_outlined);

  allowNextStep(){
    emit(AllowNextState(isPassVerified));
    if(passwordController.text.isNotEmpty){
      buttonPasswordColor = XColors.whiteColor;
      isPassVerified = true;
    }else{
      buttonPasswordColor = XColors.shadeColor;
      isPassVerified = false;
    }
    emit(AllowNextState(isPassVerified));
  }

  changeObscure(){
    isObscure ? 
      {
        suffixIcon = const Icon(Icons.remove_red_eye_outlined),
        isObscure = false
      }
      : {
        suffixIcon = const Icon(Icons.remove_red_eye),
        isObscure = true
      };
    emit(ChangeObscureState(isObscure));
  }

  TextEditingController usernameController = TextEditingController();
  int showMore = 2;
  showMoreUsernames(){
    showMore = 5;
    emit(ShowMoreUsernames(showMore));
  }

  bool languageSet = false;
  setLang(){
    languageSet = true;
    emit(LanguageSet());
  }

  int selectedContent = 0;
  List<Color> selectedColors = List.generate(
    XMainContentString.contentTitles.length, 
    (index) => XColors.whiteColor
  );
  List<String> selectedContents = [];
  changeSelectedContent(int index){
    if(selectedColors[index] == XColors.whiteColor){
      selectedColors[index] = XColors.secondaryColor;
      selectedContents.add(XMainContentString.contentTitles[index]);
      selectedContent++;
    }
    else{
      selectedColors[index] = XColors.whiteColor;
      selectedContents.remove(XMainContentString.contentTitles[index]);
      selectedContent--;
    }
    emit(SetMainContentState(selectedContent));
  }

  late List<int> selectedSubContent = List.generate(
    selectedContents.length, 
    (index) => 0
  );
  List<Color> selectedSubColors = List.generate(
    XMainContentString.contentTitles.length, 
    (index) => XColors.whiteColor
  );
  changeSelectedSubContent(int index){
    if(selectedSubColors[index] == XColors.whiteColor){
      selectedSubColors[index] = XColors.secondaryColor;
      selectedSubContent[index]++;
    }
    else{
      selectedSubColors[index] = XColors.whiteColor;
      selectedSubContent[index]--;
    }
    emit(SetSideContentState(selectedSubContent));
  }
}
