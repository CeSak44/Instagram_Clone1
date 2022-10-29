import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ColorManager.forth, ColorManager.third, ColorManager.second],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/SplashLogo.png'),
            Padding(padding: EdgeInsets.symmetric(vertical: 18.h)),
            Text(
              'Instagram',
              style: getLabelTextSplash(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
  );
  }
}