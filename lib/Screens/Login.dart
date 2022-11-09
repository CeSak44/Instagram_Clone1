import 'package:flutter/material.dart';
import 'package:instagram_clone/Utils/ColorManager.dart';
import '../Utils/Dimonsions.dart';
import '../Utils/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  // final TextEditingController _EmailPhonecontroler = TextEditingController();
  // final TextEditingController _Passwordcontroler = TextEditingController();
  
  // @override
  // void dispose() {
    
  //   _EmailPhonecontroler.dispose();
  //   _Passwordcontroler.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            body: Container(
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
                  SizedBox(
                    height: PadingManager.pading52.h,
                  ),
                  Image.asset('assets/icons/LoginLogo.png'),
                  // Padding(padding: EdgeInsets.all(PadingManager.pading47.w)),
                  SizedBox(
                    height: 64.h,
                  ),
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
                  SizedBox(
                    height: PadingManager.pading52.h,
                  ),
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
                            borderRadius: BorderRadius.circular(8.r)),
                        labelStyle: getLabelText(color: ColorManager.shadeGrey),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  // SizedBox(height: 13.h,),

                  Row(
                    children: [
                      SizedBox(
                        width: PadingManager.pading250.w,
                      ),
                      TextButton(
                        onPressed: (() => {}),
                        child: Text(
                          'Forgot password?',
                          style: getLabelText(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: PadingManager.pading30.h,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(PadingManager.widthTextField.w,
                            PadingManager.heightTextField.h),
                        backgroundColor: ColorManager.loginBleu,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      onPressed: (() => {}),
                      child: Text(
                        'Log in',
                        style: getLabelTextSemiBold(color: Colors.white),
                      )),
                  SizedBox(
                    height: PadingManager.pading52.h,
                  ),
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
                  SizedBox(
                    height: PadingManager.pading52.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebookLogin.png'),
                      SizedBox(
                        width: PadingManager.pading27.w,
                      ),
                      Text(
                        "Log in with FaceBook",
                        style: getLabelTextSemiBold(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: PadingManager.pading80.h,
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: PadingManager.pading9.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: getLabelText(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: ((() => {})),
                        child: Text("Sign in",
                            style: getLabelText(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
