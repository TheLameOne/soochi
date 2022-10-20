import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soochi/presentation/TabPages/Home.dart';
import 'package:soochi/presentation/SplashPage.dart';
import 'package:soochi/presentation/TabPages/Profile.dart';
import 'package:soochi/presentation/auth/login_screen.dart';
import 'package:soochi/presentation/auth/registration_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soochi',
        // theme: ThemeData(
        //     primarySwatch: Colors.blueGrey,
        //     textTheme: GoogleFonts.latoTextTheme()),
        initialRoute: SplashPage.routeNamed,
        routes: {
          SplashPage.routeNamed: (BuildContext context) => SplashPage(),
          RegistrationScreen.routeNamed: (BuildContext context) =>
              RegistrationScreen(),
          LoginScreen.routeNamed: (BuildContext context) => LoginScreen(),
          Home.routeNamed: (BuildContext context) => Home(),
          Profile.routeNamed: (BuildContext context) => Profile(),
        });
  }
}
