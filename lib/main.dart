import 'package:PP/screens/Personal/Personal.dart';
import 'package:PP/screens/homepage.dart';
import 'package:PP/screens/login/signin2.dart';
import 'package:PP/screens/login/signup.dart';
import 'package:PP/screens/new.dart';
import 'package:PP/screens/settings/settings.dart';
import 'package:PP/services/auth.dart';
import 'package:PP/widgets/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  AuthService _authService = AuthService();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snap) {
            if (snap.hasData) {
              return Wrapper();
            } else {
              return SignIn();
            }
          }),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}
