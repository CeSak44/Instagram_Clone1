// // ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:instagram_clone/Utils/ColorManager.dart';
// import '../Utils/Dimonsions.dart';
// import '../Utils/TextStyle.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class StoryCircle extends StatefulWidget {
//   const StoryCircle({super.key});

//   @override
//   // State<StoryCircle>
//   // ignore: library_private_types_in_public_api
//   _StoryCircleState createState() => _StoryCircleState();
// }

// class _StoryCircleState extends State<StoryCircle>
//     with SingleTickerProviderStateMixin {
//   late Animation<double> gap, base, reverse;
//   late AnimationController controller;
//   @override
//   void initState() {
//     super.initState();
//     controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 4));
//     base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
//     reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
//     gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
//       ..addListener(() {
//         setState(() {});
//       });
//     controller.forward();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(390, 844),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (context, child) {
//           return Scaffold(
//             backgroundColor: Colors.white,
//             body: Container(
//               alignment: Alignment.center,
//               child: RotationTransition(
//                 turns: base,
//                 child: DashedCircle(
//                   gapSize: gap.value,
//                   dashes: 20,
//                   color: ColorManager.second,
//                   child: RotationTransition(
//                     turns: reverse,
//                     child: Padding(
//                       padding: const EdgeInsets.all(5),
//                       child: CircleAvatar(
//                         radius: 33.h,
//                         backgroundColor: Colors.grey,
//                         backgroundImage: AssetImage("assets/Images/pexels-jonas-8596889.jpg"),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
