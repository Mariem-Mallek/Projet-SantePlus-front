import 'package:flutter/material.dart';
import 'package:santepluspatient/screens/login/accueil_page.dart';
import 'package:santepluspatient/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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
      title: 'SantePlus Patient',
      themeMode: ThemeMode.system,
      theme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home : AccueilPage(),
    );
  }
}


