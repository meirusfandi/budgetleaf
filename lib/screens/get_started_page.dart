import 'package:budgetleaf/core/helper/prefs_helper.dart';
import 'package:budgetleaf/core/utils/color.dart';
import 'package:budgetleaf/core/utils/container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LeafColor.pinkColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: GestureDetector(
          onTap: () async {
            prefInstance.setString('isFirstTime', 'false');
            context.replace('/home');
          },
          child: Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF0A84FF), Color(0xFF60A9FF)],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ).padded(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/png/img_onboarding.png', // Replace with your image path
                      width: double.infinity,
                      scale: 1.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                  size: const Size(double.infinity, double.infinity),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      const Text(
                        'Welcome to BudgetLeaf 🌿',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Track your expenses and manage your budget effortlessly.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ).horizontalpadded(24).verticalpadded(32)
                ),
              ),
            ),                    
          ],
        ),
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 40); // Top left corner
    path.quadraticBezierTo(
      0, 0,
      40, 0,
    ); // Smooth top-left corner

    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
      size.width, 0,
      size.width, 40,
    ); // Smooth top-right corner

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {  
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width*0.0010000,size.height*-0.0011571);
    path.quadraticBezierTo(size.width*0.0002500,size.height*0.7497107,0,size.height);
    path.lineTo(size.width*1.0008333,size.height*0.9985714);
    path.quadraticBezierTo(size.width*1.0010250,size.height*0.4145714,size.width*1.0005500,size.height*0.2005571);
    path.cubicTo(size.width*0.8507750,size.height*-0.0446286,size.width*0.1963583,size.height*0.2145000,size.width*0.0010000,size.height*-0.0011571);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
