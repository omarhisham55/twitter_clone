import 'package:flutter/material.dart';
import '../../../../config/routes/x_routes.dart';
import '../../../../core/utils/x_colors.dart';
import '../../../../core/utils/x_string.dart';

Widget mainTermsAndPolicy(_) => Wrap(
  children: [
    Text(
      XRegistrationString.agreement,
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: (){},
      child: Text(
        XRegistrationString.terms,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
    Text(
      " and ",
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: (){},
      child: Text(
        XRegistrationString.privacy,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
    Text(
      ", including ",
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: (){},
      child: Text(
        XRegistrationString.cookie,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
  ],
);

Widget termsAndPolicy2(_) => Wrap(
  children: [
    mainTermsAndPolicy(_),
    Text(
      XRegistrationString.step2Agreement,
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: (){},
      child: Text(
        XRegistrationString.learnMore,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
  ],
);

Widget termsAndPolicy3(_) => Wrap(
  children: [
    mainTermsAndPolicy(_),
    Text(
      XRegistrationString.step2Agreement,
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    Text(
      XRegistrationString.step3Agreement1,
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: (){},
      child: Text(
        XRegistrationString.learnMore,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
    Text(
      XRegistrationString.step3Agreement2,
      style: Theme.of(_).textTheme.bodyMedium,
    ),
    GestureDetector(
      onTap: () => Navigator.pushNamed(_, Routes.privacy),
      child: Text(
        XRegistrationString.here,
        style: Theme.of(_).textTheme.bodyMedium!.copyWith(
          color: XColors.secondaryColor
        ),
      ),
    ),
  ],
);