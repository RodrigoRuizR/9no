import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/page/home_header.dart';
import 'package:flutter_application_1/src/page/homepage.dart';
import 'package:flutter_application_1/src/page/login.dart';
import 'package:flutter_application_1/src/page/principal.dart';  
import 'package:flutter_application_1/src/page/recuperar.dart';
import 'package:flutter_application_1/src/page/registro.dart';
import 'package:flutter_application_1/src/painters/progressView.dart';
import 'package:flutter_application_1/src/splash/splash_view.dart';
import 'loginPrincipal.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'movil',
      initialRoute: 'principal',
      routes: {
      'home': (BuildContext context) => const Login(),
      'act2': (BuildContext context) => const HomeHeader(),
      'splash' : (BuildContext context)  => const SplashView(),
      'progress':(BuildContext context) =>  ProgressView(),
      'registro':(BuildContext context) =>  const Registro(),
      'login':(BuildContext context) =>  const LoginPage(),
      'recuperar':(BuildContext context) =>  const RecuperarPage(),
      'homepage': (context) => const Home(),
      'principal': (context) => const PrincipalScreen()
      },
    );
  }
}
      