import 'package:budgetleaf/core/helper/prefs_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);

  @override
  void initState() {
    super.initState();
    checkCondition();
  }

  void checkCondition() {
    final isFirstTime = prefHelper.getString('isFirstTime') ?? 'true';
        
    animationController
    ..forward()
    ..addStatusListener((_) async {
      if (isFirstTime == 'true') {
        context.go('/get-started');
      } else {
        context.go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/png/img_logo_app.png',
                width: 150,
                height: 150,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
