// ignore: file_names
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/StoryPersonnel.dart';
import '../Utils/Dimonsions.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: PadingManager.pading13.w,
                  ),
                  Text(
                    "Instagram",
                    style: getLabelTextHome(color: Colors.black),
                  ),
                  SizedBox(
                    width: PadingManager.pading5.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top :8),
                    child: IconButton(
                        onPressed: (() => {}),
                        icon: Image.asset(
                            "assets/icons/icon/Outline/arrow-ios-down.png")),
                  ),
                  
                ],
              ),
              actions: 
              [
                IconButton(
                    onPressed: (() => {}),
                    icon: Image.asset(
                        "assets/icons/icon/Outline/messenger 1.png")),
                        SizedBox(
                    width: PadingManager.pading13.w,
                  ),
              ],
            ),
            body: Container(
              child: const StoryPersonnel(),
            ),
          );
        });
  }
}
