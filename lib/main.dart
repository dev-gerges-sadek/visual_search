import 'package:flutter/material.dart';
import 'package:visual_search/features/screens/login_screen.dart';


void main() => runApp(const VisualSearch());

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
