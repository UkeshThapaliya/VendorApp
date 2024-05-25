import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vendor_app/vendor/views/auth/vendor_auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyDN_R7TovMvsysXZ1naGx69VC_NuDPjv4Y",
              appId: "1:245683165794:android:a1e21b5adb7e7c273a8f3b",
              messagingSenderId: "245683165794",
              projectId: "fashionwear-9e6ab",
              storageBucket: "fashionwear-9e6ab.appspot.com"),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: VendorAuthScreen());
  }
}
