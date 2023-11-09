import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:twitter_clone/bloc_observer.dart';
import 'package:twitter_clone/config/themes/x_theme.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/create_account/presentation/cubit/create_account_cubit.dart';
import 'package:twitter_clone/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:twitter_clone/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'config/routes/x_routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  Bloc.observer = MyBlocObserver();
  runApp(const X());
}

class X extends StatelessWidget {
  const X({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CreateAccountCubit()),
        BlocProvider(create: (context) => SignInCubit()),
        BlocProvider(create: (context) => NavigationCubit()),
      ],
      child: MaterialApp(
        title: XStrings.xTitle,
        theme: xTheme(),
        onGenerateRoute: (settings) => XRoutes.onGeneratedRoute(settings),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}