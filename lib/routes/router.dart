import 'package:celebrazioni/presentation/dashboard/page/eventDescription.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/presentation/Add%20free%20listing/addFreeListing.dart';
import 'package:celebrazioni/presentation/Alerts/FailedAlert.dart';
import 'package:celebrazioni/presentation/Alerts/SuccessfulAlert.dart';
import 'package:celebrazioni/presentation/Auth/pages/Agreement%20Policy/agreementScreen.dart';
import 'package:celebrazioni/presentation/Auth/pages/signIn/signIn.screen.dart';
import 'package:celebrazioni/presentation/Auth/pages/signUp/signUp.screen.dart';
import 'package:celebrazioni/presentation/Add%20free%20listing/Free%20food/freeFood.dart';
import 'package:celebrazioni/presentation/Location/find%20users/findUsers.dart';
import 'package:celebrazioni/presentation/Location/onboarding/locationOnboarding.dart';
import 'package:celebrazioni/presentation/Location/set%20location/setLocation.dart';
import 'package:celebrazioni/presentation/Onboarding/pages/onboarding.dart';
import 'package:celebrazioni/presentation/SplashScreen/pages/splashScreen.dart';
import 'package:celebrazioni/presentation/dashboard/page/dashboard.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootApp');

GlobalKey<NavigatorState> get navigatorKey => _rootNavigatorKey;

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
        // return OnboardingScreen();
        // return DashBoard();
        // return FailedAlert();
        // return const PersonalDetailsScreen();
        // return SignUpScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'onboarding',
          builder: (BuildContext context, GoRouterState state) =>
              MainOnboardingScreen(),
        ),
        GoRoute(
          path: 'agreement',
          builder: (BuildContext context, GoRouterState state) =>
              const AgreementScreen(),
        ),
        GoRoute(
          path: 'failedAlert',
          builder: (BuildContext context, GoRouterState state) =>
              const FailedAlert(),
        ),
        GoRoute(
          path: 'successfulAlert',
          builder: (BuildContext context, GoRouterState state) =>
              const SuccessfulAlert(),
        ),
        GoRoute(
          path: 'freeListing',
          builder: (BuildContext context, GoRouterState state) =>
              AddFreeListing(),
        ),
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) => DashBoard(),
        ),
        GoRoute(
          path: 'freeFood',
          builder: (BuildContext context, GoRouterState state) => FreeFood(),
        ),
        GoRoute(
          path: 'locationOnboarding',
          builder: (BuildContext context, GoRouterState state) =>
              const LocationScreen(),
        ),
        GoRoute(
          path: 'setLocation',
          builder: (BuildContext context, GoRouterState state) =>
              const SetLocation(),
        ),
        GoRoute(
          path: 'eventDescription',
          builder: (BuildContext context, GoRouterState state) =>
              const EventDescriptionScreen(),
        ),
        GoRoute(
          path: 'findUsers',
          builder: (BuildContext context, GoRouterState state) =>
              const FindUsers(),
        ),
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) =>
              const SignUpScreen(),
        ),
        GoRoute(
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) =>
              const SignInScreen(),
        ),
//         GoRoute(
//           path: 'downloadedInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const DownloadedInvoiceScreen(),
//         ),
//         GoRoute(
//           path: 'dashboard',
//           builder: (BuildContext context, GoRouterState state) =>
//               const InvoiceDashboard(),
//         ),
//         GoRoute(
//           path: 'editInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const EditInvoicePage(),
//         ),
//         GoRoute(
//           path: 'editNotification',
//           builder: (BuildContext context, GoRouterState state) =>
//               const EditNotificationScreen(),
//         ),
//         GoRoute(
//           path: 'deleteInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const DeleteInvoiceScreen(),
//         ),
//         GoRoute(
//           path: 'createInvoice1',
//           builder: (BuildContext context, GoRouterState state) =>
//               const InvoiceCreate1(),
//         ),
//         GoRoute(
//           path: 'createInvoice2',
//           builder: (BuildContext context, GoRouterState state) =>
//               const InvoiceCreate2(),
//         ),
//         GoRoute(
//           path: 'createInvoice3',
//           builder: (BuildContext context, GoRouterState state) =>
//               const InvoiceCreate3(),
//         ),
//         GoRoute(
//           path: 'invoicePreview',
//           builder: (BuildContext context, GoRouterState state) =>
//               const InvoicePreviewPage(),
//         ),
//         GoRoute(
//           path: 'sentInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const SentInvoiceScreen(),
//         ),
//         GoRoute(
//           path: 'sendInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const SendInvoiceScreen(),
//         ),
//         GoRoute(
//           path: 'sentNotification',
//           builder: (BuildContext context, GoRouterState state) =>
//               const SentNotificationScreen(),
//         ),
//         GoRoute(
//           path: 'deleteInvoice',
//           builder: (BuildContext context, GoRouterState state) =>
//               const DeleteInvoiceScreen(),
//         ),
      ],
    ),
  ],
);
