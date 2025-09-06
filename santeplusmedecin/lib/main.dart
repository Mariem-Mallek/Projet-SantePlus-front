import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:santeplusmedecin/firebase_options.dart';
import 'package:santeplusmedecin/screens/login/accueil_page.dart';
import 'package:santeplusmedecin/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home : AccueilPage(),
    );
  }
}
