//import 'package:sf221_project/helper/helper_function.dart';
//import 'package:sf221_project/pages/auth/login_page.dart';
//import 'package:sf221_project/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sf221_project/shared/constants.dart';
//import 'package:sf221_project/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appId,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}