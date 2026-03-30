import 'dart:async';
import 'package:care_kapital_mobile_app/navigation/shell.dart';
import 'package:care_kapital_mobile_app/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class AppRouter {
//  static final AuthStateNotifier authStateNotifier = AuthStateNotifier();

  /// ROOT NAVIGATOR
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  /// ROUTER
  static final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,

    /// Start from splash to wait for auth state restoration
    initialLocation: '/home',

    /// Refresh router when auth changes
    // refreshListenable: authStateNotifier,

    /// AUTH REDIRECT
    redirect: (context, state) {
      // final bool isInitialized = authStateNotifier.isInitialized;
      // final user = authStateNotifier.user;

      final isLoginPage = state.matchedLocation == '/login';
      final isSplashPage = state.matchedLocation == '/splash';

      /// Wait for FirebaseAuth to restore the session
      // if (!isInitialized) {
      //   return isSplashPage ? null : '/splash';
      // }

      // /// If NOT logged in → go to login
      // if (user == null) {
      //   return isLoginPage ? null : '/login';
      // }

      /// If logged in and trying to open login or splash → go home
      if ((isLoginPage || isSplashPage)) {
        return '/home';
      }

      return null;
    },

    routes: [

      

      /// SHELL ROUTE (BOTTOM NAV)
      ShellRoute(
        builder: (context, state, child) {
          return ShellPage(child: child);
        },
        routes: [

          /// HOME
          GoRoute(
            path: '/home',
            builder: (context, state) {

             

              return Homepage();
            },
          ),

          /// ALL PRODUCTS
         
        ],
      ),
    ],
  );
}

/// AUTH STATE NOTIFIER (so we can wait for the first auth event)
// class AuthStateNotifier extends ChangeNotifier {
//   AuthStateNotifier() {
//     _subscription = FirebaseAuth.instance.authStateChanges().listen((user) {
//       _user = user;
//       if (!_isInitialized) {
//         _isInitialized = true;
//       }
//       notifyListeners();
//     });
//   }

//   bool _isInitialized = false;
//   User? _user;

//   bool get isInitialized => _isInitialized;
//   User? get user => _user;

//   late final StreamSubscription<User?> _subscription;

//   @override
//   void dispose() {
//     _subscription.cancel();
//     super.dispose();
//   }
// }
