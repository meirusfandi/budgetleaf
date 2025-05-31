import 'package:budgetleaf/core/utils/color.dart';
import 'package:budgetleaf/core/utils/container.dart';
import 'package:flutter/material.dart';

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
          onTap: () {
            
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
        ),
      ).padded(),
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
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width,(MediaQuery.of(context).size.width*0.5).toDouble()),
                painter: RPSCustomPainter(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      'Welcome to BudgetLeaf 🌿',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Track your expenses and manage your budget effortlessly.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
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

  // Layer 1
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*-0.0001417,size.height*0.3571857);
    path_0.quadraticBezierTo(size.width*-0.0000354,size.height*0.8392964,0,size.height);
    path_0.lineTo(size.width*1.0008333,size.height*0.9985714);
    path_0.quadraticBezierTo(size.width*0.9980250,size.height*0.6949286,size.width*0.9976833,size.height*0.5720857);
    path_0.cubicTo(size.width*0.8820250,size.height*0.3099429,size.width*0.0862250,size.height*0.5744714,size.width*-0.0001417,size.height*0.3571857);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  
  // Layer 1
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
