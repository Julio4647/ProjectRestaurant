import 'package:flutter/material.dart';
import 'package:learning_flutter/modules/auth/screens/create_account.dart';
import 'package:learning_flutter/modules/auth/screens/login.dart';
import 'package:learning_flutter/navigation/home.dart';
import 'package:learning_flutter/navigation/navigation.dart';
import 'package:learning_flutter/navigation/profile.dart';
import 'package:learning_flutter/navigation/reservations.dart';
import 'package:learning_flutter/navigation/top.dart';
import 'package:learning_flutter/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

//flutter pub get
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/register': (context) => CreateAccount(),
        '/menu': (context) => Navigation(),
        '/home': (context) => Scaffold(
              backgroundColor: Colors.pink,
              body: const Home(),
            ),
        '/top': (context) => Top(),
        '/reservations': (context) => Reservations(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
