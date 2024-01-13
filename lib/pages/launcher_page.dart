import 'package:ecommercefirebase/auth/auth_service.dart';
import 'package:ecommercefirebase/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class LauncherPage extends StatefulWidget {
  static const String routeName = '/launcher';
  const LauncherPage({Key? key}) : super(key: key);

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0), (){ //.....................for handel red screen error
      if(AuthService.currentUser != null){
        //........................................Navigate to Dashboard
        Navigator.pushReplacementNamed(context, DashboardPage.routeName);
      }else{
        //.........................................Navigate to login page
        Navigator.pushReplacementNamed(context, LoginPage.routeName);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}
