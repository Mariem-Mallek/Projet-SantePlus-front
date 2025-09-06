import 'package:flutter/widgets.dart';
import 'package:santepluspatient/models/utilisateur.dart';

class NavProfilPage extends StatefulWidget {
  const NavProfilPage({super.key, required Utilisateur user});

  @override
  State<NavProfilPage> createState() => _NavProfilPageState();
}

class _NavProfilPageState extends State<NavProfilPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}