import 'package:budgetleaf/screens/detail_card_page.dart';
import 'package:budgetleaf/screens/detail_transaction_page.dart';
import 'package:budgetleaf/screens/form_add_card_page.dart';
import 'package:budgetleaf/screens/form_add_transaction_page.dart';
import 'package:budgetleaf/screens/get_started_page.dart';
import 'package:budgetleaf/screens/home_page.dart';
import 'package:budgetleaf/screens/not_found_page.dart';
import 'package:budgetleaf/screens/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {  
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    errorPageBuilder: (context, state) => NoTransitionPage(
      child: const NotFoundPage(),
    ),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/get-started',
        builder: (context, state) => const GetStartedPage(),
      ),
      GoRoute(
        path: '/form-add-card',
        builder: (context, state) => const FormAddCardPage(),
      ),
      GoRoute(
        path: '/form-add-transaction',
        builder: (context, state) => const FormAddTransactionPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/not-found',
        builder: (context, state) => const NotFoundPage(),
      ),
      GoRoute(
        path: '/detail-transaction/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          return DetailTransactionPage(id: id);
        },
      ),
      GoRoute(
        path: '/detail-card/:cardId',
        builder: (context, state) {
          final cardId = state.pathParameters['cardId'];
          return DetailCardPage(cardId: cardId);
        },
      ),
    ]
  );
}
