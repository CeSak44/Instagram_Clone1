// ignore: file_names
import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';
import '../Utils/Dimonsions.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StoryPersonnel extends StatefulWidget {
  const StoryPersonnel({super.key});

  @override
  State<StoryPersonnel> createState() => _StoryPersonnelState();
}

class _StoryPersonnelState extends State<StoryPersonnel> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Material(
              child: Padding(
                padding: const EdgeInsets.all(4.5),
                child: 
                SizedBox(
                  height: 63.h,
                  width: 63.h,
                  
                  child: Stack(
                    children:[ 
                      CircleAvatar(
                      radius: 33.h,
                      backgroundColor: Colors.grey,
                      // backgroundImage:
                      //   const AssetImage("assets/Images/pexels-jonas-8596889.jpg"),
                    ),
                      Align(
                        alignment: FractionalOffset(0.2, 0.6),
                        child: Icon(Icons.baby_changing_station),
                      ),
                      
                    ]
                  ),
                ),
              ),
            ),
          );
        });
  }
}
