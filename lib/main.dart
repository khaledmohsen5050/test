import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduationp/providers/languageprovider.dart';
import 'package:graduationp/screens/Addpost.dart';
import 'package:graduationp/screens/Home.dart';
import 'package:graduationp/screens/authentication_screen.dart';
import 'package:graduationp/screens/Home.dart';
/*import 'package:graduationp/screens/Login.dart';
import 'package:graduationp/screens/signup.dart';*/
import 'package:graduationp/screens/splashscreen.dart';
import 'package:graduationp/screens/lost.dart';
//import 'package:graduationp/screens/signup.dart';
import 'package:graduationp/widgets.dart/Bottomnavbar.dart';
import 'package:graduationp/widgets.dart/auth_form.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => Languageprovider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: FutureBuilder<Object>(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SplashScreen();
            } else {
              if (FirebaseAuth.instance.currentUser != null) {
                return AuthenticationScreen();
              } else {
                return Bottomnavbar();
              }
            }
          }),
      routes: {
        Bottomnavbar.routeName: (context) => Bottomnavbar(),
        AuthenticationScreen.routeName: (context) => AuthenticationScreen(),
      },
    );
  }
}
