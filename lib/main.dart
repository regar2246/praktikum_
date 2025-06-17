import 'package:flutter/material.dart';
import 'screens/product_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';  


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Tambahkan const pada konstruktor
  const MyApp({Key? key}) : super(key: key); // Perhatikan penggunaan const

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD with OOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductScreen(), // Pastikan juga ProductScreen const
    );
  }
}
