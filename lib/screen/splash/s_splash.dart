import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    delay((){
      Nav.push(const MainScreen());  // 1.5초뒤에 메인스크린으로 넘어간다.
    }, 1500.ms);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(
        "assets/image/splash/splash.png", width: 192, height: 192,),);
  }
}
