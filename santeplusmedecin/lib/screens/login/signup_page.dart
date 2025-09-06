import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:santeplusmedecin/controllers/auth_controller.dart';
import 'package:santeplusmedecin/models/utilisateur.dart';
import 'package:santeplusmedecin/screens/login/accueil_page.dart';
import 'package:santeplusmedecin/screens/login/signin_page.dart';
import 'package:santeplusmedecin/utils/constants/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _nomController;
  late TextEditingController _phoneController;
  late TextEditingController _specialiteController;
  late TextEditingController _localController ;
  bool _isChecked = false;
  bool _passwordVisible = false;
  bool satusSignUp = false;

  late GlobalKey<FormState> _formkey;
  final controller = Get.put(AuthController());

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nomController = TextEditingController();
    _phoneController = TextEditingController();
    _specialiteController = TextEditingController();
    _localController = TextEditingController();
    _formkey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nomController.dispose();
    _phoneController.dispose();
    _specialiteController.dispose();
    _localController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          flexibleSpace: Center(
            child: Image.asset("assets/images/logo.png", height: 40),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "S'inscrire",
                          style: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _nomController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre nom",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.person_outline_rounded),
                          ),
                          style: Theme.of(
                            context,
                          ).inputDecorationTheme.labelStyle,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _nomController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre prénom",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.person_outline_rounded),
                          ),
                          style: Theme.of(
                            context,
                          ).inputDecorationTheme.labelStyle,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _emailController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre adresse e-mail",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                          style: Theme.of(
                            context,
                          ).inputDecorationTheme.labelStyle,
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: "* Veuillez saisir une adresse e-mail",
                            ),
                            EmailValidator(
                              errorText:
                                  "Veuillez saisir une adresse e-mail valide",
                            ),
                          ]).call,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _passwordController,
                          maxLines: 1,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            hintText: "Entrez votre mot de passe",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          style: Theme.of(
                            context,
                          ).inputDecorationTheme.labelStyle,
                          validator: MultiValidator([
                            RequiredValidator(errorText: "* Obligatoire"),
                            MinLengthValidator(
                              6,
                              errorText:
                                  "Le mot de passe doit comporter au moins 6 caractères",
                            ),
                            MaxLengthValidator(
                              15,
                              errorText:
                                  "Le mot de passe ne doit pas comporter plus de 15 caractères",
                            ),
                          ]).call,
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _specialiteController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre Spécialitée",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.person_outline_rounded),
                          ),
                          style:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _localController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre Addresse",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.location_on_outlined),
                          ),
                          style:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _phoneController,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "Entrez votre N° téléphone",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: Icon(Icons.phone_rounded),
                          ),
                          style: Theme.of(
                            context,
                          ).inputDecorationTheme.labelStyle,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.labelMedium!,
                          children: <TextSpan>[
                            TextSpan(text: "Je suis d'accord avec "),
                            TextSpan(
                              text: "les Conditions d'utilisation ",
                              style: TextStyle(color: AppColors.primaryRed),
                            ),
                            TextSpan(text: "et "),
                            TextSpan(
                              text: "Politique de confidentialité ",
                              style: TextStyle(color: AppColors.primaryRed),
                            ),
                            TextSpan(text: "de medConnect."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: _isChecked
                            ? AppColors.primaryRed
                            : AppColors.grey,
                      ),
                      onPressed: _isChecked
                          ? () async {
                              if (_formkey.currentState!.validate()) {
                                final user = Utilisateur(
                                  email: _emailController.text.trim(),
                                  mdp: _passwordController.text.trim(),
                                  nom: _nomController.text.trim(),
                                  numTel: _phoneController.text.trim(),
                                );

                                satusSignUp = (await controller
                                    .createUserController(user))!;
                                if (satusSignUp) {
                                  Utilisateur usr = (await controller
                                      .getUserDetailsController())!;
                                  print(
                                    "Object Doctor Sign In name=${usr.nom} \n id=${usr.id}",
                                  );
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AccueilPage(),
                                    ),
                                  );
                                }
                              }
                            }
                          : null,
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.labelMedium!,
                      children: <TextSpan>[
                        TextSpan(text: "Déjà inscrit ? "),
                        TextSpan(
                          text: "Connectez-vous ici",
                          style: TextStyle(
                            color: AppColors.primaryRed,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
