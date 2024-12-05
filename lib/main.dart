import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tea_trover/screens/BillofMonth.dart';
import 'package:tea_trover/screens/profile.dart';
import 'package:tea_trover/screens/wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyADUo4W_FXhQAl2BB50TJasTIPZafcMct0",
        appId: "1:6460420556:android:681c04109f73f9525aad69",
        messagingSenderId: "6460420556",
        projectId: "teatrove-358f5",
        databaseURL: 'https://teatrove-358f5-default-rtdb.firebaseio.com',
      )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tea Trover',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Wrapper (),
    );
  }
}