import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_or_sign_in_state.dart';

class CreateOrSignInCubit extends Cubit<CreateOrSignInState> {
  CreateOrSignInCubit() : super(CreateOrSignInInitial());
}
