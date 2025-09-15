import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:santeplusmedecin/screens/home/home_pages.dart';
import 'package:santeplusmedecin/screens/login/accueil_page.dart';
import 'package:santeplusmedecin/utils/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? mytoken = prefs.getString('token');
  runApp(MyApp(token: mytoken));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.token});
  final String? token;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SantePlus Medecin',
      themeMode: ThemeMode.system,
      theme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home :  token != null && !JwtDecoder.isExpired(token!)
              ? HomePage(token: token!)
              : AccueilPage(),
    );
  }
}
