import 'package:flutter/material.dart';
import 'package:twitter_clone/core/utils/x_string.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/5_step_verification/step1.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/5_step_verification/step2.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/5_step_verification/step3.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/5_step_verification/step4.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/5_step_verification/step5.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/add_photo.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/allow_notifications.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/set_language.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/set_main_content.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/set_side_content.dart';
import 'package:twitter_clone/features/create_account/presentation/pages/profile_setup/set_username.dart';
import 'package:twitter_clone/features/create_or_sign_in/presentation/pages/create_or_sign_in.dart';
import 'package:twitter_clone/features/messages/presentation/pages/chat_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/community_page.dart';
import 'package:twitter_clone/features/home_page/presentation/pages/home_page.dart';
import 'package:twitter_clone/features/messages/presentation/pages/messages_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/notification_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/main_pages/search_page.dart';
import 'package:twitter_clone/features/navigation/presentation/pages/navigation.dart';
import 'package:twitter_clone/features/home_page/presentation/widgets/post_details.dart';
import 'package:twitter_clone/features/privacy/presentation/pages/privacy.dart';
import 'package:twitter_clone/features/sign_in/presentation/pages/forgot_password.dart';
import 'package:twitter_clone/features/sign_in/presentation/pages/sign_in.dart';
import 'package:twitter_clone/features/splash_screen/presentation/pages/splash_screen.dart';

class Routes {
  static const String initialRoute = "/";
  static const String createOrSignInRoute = "/createOrSignInRoute";
  static const String privacy = "/privacyRoute";
  static const String createAccountStep1 = "/createAccountStep1Route";
  static const String createAccountStep2 = "/createAccountStep2Route";
  static const String createAccountStep3 = "/createAccountStep3Route";
  static const String createAccountStep4 = "/createAccountStep4Route";
  static const String createAccountStep5 = "/createAccountStep5Route";
  static const String addPhoto = "/addPhotoRoute";
  static const String setUsername = "/usernameRoute";
  static const String allowNotifications = "/allowNotificationsRoute";
  static const String setLanguage = "/setLanguageRoute";
  static const String setMainContent = "/setMainContentRoute";
  static const String setSideContent = "/setSideContentRoute";
  static const String signIn = "/signInRoute";
  static const String forgotPassword = "/forgotPasswordRoute";
  static const String navigation = "/navigationRoute";
  static const String homePage = "/homeRoute";
  static const String postDetails = "/postDetailsRoute";
  static const String searchPage = "/searchRoute";
  static const String communityPage = "/communityRoute";
  static const String notificationsPage = "/notificationRoute";
  static const String messagesPage = "/messagesRoute";
  static const String chatPage = "/chatRoute";
}

class XRoutes {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const XSplashScreen(),
          settings: settings,
        );
      case Routes.createOrSignInRoute:
        return MaterialPageRoute(
          builder: (_) => const CreateOrSignIn(),
          settings: settings,
        );
      case Routes.privacy:
        return MaterialPageRoute(
          builder: (_) => const Privacy(),
          settings: settings,
        );
      case Routes.createAccountStep1:
        return MaterialPageRoute(
          builder: (_) => const CreateStep1(),
          settings: settings,
        );
      case Routes.createAccountStep2:
        return MaterialPageRoute(
          builder: (_) => const CreateStep2(),
          settings: settings,
        );
      case Routes.createAccountStep3:
        return MaterialPageRoute(
          builder: (_) => const CreateStep3(),
          settings: settings,
        );
      case Routes.createAccountStep4:
        return MaterialPageRoute(
          builder: (_) => const CreateStep4(),
          settings: settings,
        );
      case Routes.createAccountStep5:
        return MaterialPageRoute(
          builder: (_) => const CreateStep5(),
          settings: settings,
        );
      case Routes.addPhoto:
        return MaterialPageRoute(
          builder: (_) => const AddPhoto(),
          settings: settings,
        );
      case Routes.setUsername:
        return MaterialPageRoute(
          builder: (_) => const SetUserName(),
          settings: settings,
        );
      case Routes.allowNotifications:
        return MaterialPageRoute(
          builder: (_) => const AllowNotifications(),
          settings: settings,
        );
      case Routes.setLanguage:
        return MaterialPageRoute(
          builder: (_) => SetLanguage(),
          settings: settings,
        );
      case Routes.setMainContent:
        return MaterialPageRoute(
          builder: (_) => const SetMainContent(),
          settings: settings,
        );
      case Routes.setSideContent:
        return MaterialPageRoute(
          builder: (_) => const SetSideContent(),
          settings: settings,
        );
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignIn(),
          settings: settings,
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPassword(),
          settings: settings,
        );
      case Routes.navigation:
        return MaterialPageRoute(
          builder: (_) => const NavigationMain(),
          settings: settings,
        );
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case Routes.postDetails:
        final PostDetailsArguments args =
            settings.arguments as PostDetailsArguments;
        return MaterialPageRoute(
          builder: (_) => PostDetails(
            postBody: args.postBody,
            postComment: args.postComment,
          ),
          settings: settings,
        );
      case Routes.searchPage:
        return MaterialPageRoute(
          builder: (_) => const SearchPage(),
          settings: settings,
        );
      case Routes.communityPage:
        return MaterialPageRoute(
          builder: (_) => const CommunityPage(),
          settings: settings,
        );
      case Routes.notificationsPage:
        return MaterialPageRoute(
          builder: (_) => const NotificationPage(),
          settings: settings,
        );
      case Routes.messagesPage:
        return MaterialPageRoute(
          builder: (_) => const MessagesPage(),
          settings: settings,
        );
      case Routes.chatPage:
        return MaterialPageRoute(
          builder: (_) => ChatPage(),
          settings: settings,
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            XStrings.undefinedRoute,
            style: Theme.of(_).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}
