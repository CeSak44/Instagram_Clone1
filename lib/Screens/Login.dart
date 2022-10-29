import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';
import '../Utils/Dimonsions.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/LoginLogo.png'),
                  // Padding(padding: EdgeInsets.all(PadingManager.pading47.w)),
                  SizedBox(height: 64.h,),
                  SizedBox(
                    width: PadingManager.widthTextField.w,
                    height: PadingManager.heightTextField.h,
                    child: TextField(
                      maxLines: 1,
                      style: getLabelText(color: Colors.black),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8)),
                          labelStyle:
                              getLabelText(color: ColorManager.shadeGrey),
                          labelText: 'Phone number,User name or E-mail'),
                    ),
                  ),
                   SizedBox(height: PadingManager.pading52.h,),
                  SizedBox(
                    width: PadingManager.widthTextField.w,
                    height: PadingManager.heightTextField.h,
                    child: TextField(
                      maxLines: 1,
                      style: getLabelText(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)),
                        labelStyle: getLabelText(color: ColorManager.shadeGrey),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: PadingManager.pading13.h,),
                  TextButton(
                    onPressed: (() => {}),
                    child: Text(
                      'Forgot password?',
                      style: getLabelText(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: PadingManager.pading13.h,),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(
                            PadingManager.widthTextField.w,
                            PadingManager.heightTextField.h
                            ),
                        backgroundColor: ColorManager.loginBleu,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      onPressed: (() => {}),
                      child: Text(
                        'Log in',
                        style: getLabelTextSemiBold(color: Colors.white),
                      )),
                  Padding(padding: EdgeInsets.only(top: PadingManager.pading47.h)),
                  Text(
                    "Or",
                    style: getLabelTextSemiBold(color: Colors.white),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1.5,
                    indent: 70,
                    endIndent: 70,
                  ),
                  Padding(padding: EdgeInsets.only(top: PadingManager.pading55.h)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebookLogin.png'),
                      SizedBox(width: PadingManager.pading27.w,),
                      Text(
                        "Log in with FaceBook",
                        style: getLabelTextSemiBold(color: Colors.white),
                      ),
                    ],
                  ),
              Divider(color: Colors.white,),
              TextButton(
                onPressed: ((() => {})), 
              child:Text("Don't have an Account?",style : getLabelText(color: Colors.white) ),
              )
                ],
              
              ),
            ),
          );
        });
  }
}
