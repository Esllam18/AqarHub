import 'package:aqar_hub/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/cubit/splash_cubit.dart';
import 'route_names.dart';

final router = GoRouter(
  initialLocation: RouteNames.splash,
  routes: [
    GoRoute(
      path: RouteNames.splash,
      name: RouteNames.splash,
      builder: (context, state) => BlocProvider(
        create: (context) => SplashCubit(),
        child: const SplashView(),
      ),
    ),
    // TODO: Add more routes here
    // GoRoute(
    //   path: RouteNames.onboarding,
    //   name: RouteNames.onboarding,
    //   builder: (context, state) => const OnboardingView(),
    // ),
    // GoRoute(
    //   path: RouteNames.home,
    //   name: RouteNames.home,
    //   builder: (context, state) => const HomeView(),
    // ),
  ],
);
