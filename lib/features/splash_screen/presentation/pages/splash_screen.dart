import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitter_clone/config/routes/x_routes.dart';
import 'package:twitter_clone/core/utils/asset_manager.dart';

class XSplashScreen extends StatefulWidget {
  const XSplashScreen({super.key});

  @override
  State<XSplashScreen> createState() => _XSplashScreenState();
}

class _XSplashScreenState extends State<XSplashScreen> {
  late Timer _timer;
  
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.createOrSignInRoute);
  }

  _startSplash(){
    _timer = Timer(const Duration(seconds: 2), () => _goNext());
  }


  @override
  void initState() {
    super.initState();
    _startSplash();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(XImages.xLogo)
    );
  }
}