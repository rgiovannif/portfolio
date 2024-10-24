import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_rodrigo_ferreira/firebase_options.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/home/home_content.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
