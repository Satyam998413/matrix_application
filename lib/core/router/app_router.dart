import 'package:go_router/go_router.dart';
import 'package:matrix_application/core/router/app_route.dart';
import 'package:matrix_application/features/auth/presentation/screens/already_submitted_screen.dart';
import 'package:matrix_application/features/auth/presentation/screens/history_screen.dart';
import 'package:matrix_application/features/auth/presentation/screens/login_screen.dart';
import 'package:matrix_application/features/matrix_grid/presentation/screens/home_screen.dart';
import 'package:matrix_application/features/matrix_grid/presentation/screens/matrix_detail_screen.dart';
import 'package:matrix_application/features/splash/presentation/screens/splash_screen.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoute.splashPath,
  routes: [
    GoRoute(
      path: AppRoute.splashPath,
      name: AppRoute.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.loginPath,
      name: AppRoute.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoute.alreadySubmittedPath,
      name: AppRoute.alreadySubmitted,
      builder: (context, state) =>
          AlreadySubmittedScreen(user: state.extra as User),
    ),
    GoRoute(
      path: AppRoute.historyPath,
      name: AppRoute.history,
      builder: (context, state) => const HistoryScreen(),
    ),
    GoRoute(
      path: AppRoute.matrixDetailPath,
      name: AppRoute.matrixDetail,
      builder: (context, state) =>
          MatrixDetailScreen(phoneNumber: state.pathParameters['phone']!),
    ),
    GoRoute(
      path: AppRoute.homePath,
      name: AppRoute.home,
      builder: (context, state) =>
          HomeScreen(phoneNumber: state.pathParameters['phone']!),
    ),
  ],
);
