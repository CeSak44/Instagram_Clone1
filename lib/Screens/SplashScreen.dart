import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/Routes Manager.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
//  Timer? _timer;
// _startDelay(){
// _timer = Timer(const Duration ( seconds : 2), _goToNext);
// }
// _goToNext(){
// Navigator.pushReplacementNamed(context, Routes.LoginRoute);
// }

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
          colors: [
            ColorManager.forth,
            ColorManager.third, 
            ColorManager.second
            ],
        )
        ),
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
