import 'package:flutter/material.dart';

class NavHomePage extends StatefulWidget {
  const NavHomePage({super.key});

  @override
  State<NavHomePage> createState() => _NavHomePageState();
}

class _NavHomePageState extends State<NavHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/images/image_home.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}