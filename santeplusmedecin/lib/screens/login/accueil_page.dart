import 'package:flutter/material.dart';
import 'package:santeplusmedecin/screens/login/signin_page.dart';
import 'package:santeplusmedecin/utils/constants/colors.dart';


class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 40,   
                    width: 200,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Slogan
              Text(
                "Prenez soin de\nvotre santé !",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: isDark ? AppColors.white : AppColors.primaryRed,
                      fontWeight: FontWeight.w700,
                    ),
              ),

              const SizedBox(height: 10),

              // Image principale
              Expanded(
                child: Image.asset(
                  'assets/images/image_accueil.png', 
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 5),
              Text(
                "Connecter les soins, sauver des vies",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: isDark ? AppColors.white : const Color.fromARGB(255, 83, 80, 80),
                    ),
              ),

              const SizedBox(height: 50),

              // Bouton Commencer
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SigninPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: AppColors.primaryRed,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Commencer",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
