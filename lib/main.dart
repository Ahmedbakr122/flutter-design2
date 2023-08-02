import 'package:flutter/material.dart';
import 'package:login_design/views/widget/login_screen.dart';
// Import the generated file
// Import the generated file
import 'firebase_options.dart';
// Import the generated file
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: //const TodoScreen()
      const LoginScreen(title: 'Flutter Demo Home Page'),
      
    );
  }
}