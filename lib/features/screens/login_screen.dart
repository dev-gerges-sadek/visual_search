
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:visual_search/features/screens/home_screen.dart';
import 'package:visual_search/features/screens/signup_screen.dart';
import 'package:visual_search/features/widgets/iconwidget.dart';
import 'package:visual_search/features/widgets/logwidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(234, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.right,
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  suffixIcon: _emailController.text.contains("@gmail.com")
                      ? Icon(Icons.check_circle, color: Colors.green)
                      : null,
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email address with @ symbol';
                  } else if (!value.endsWith('.com')) {
                    return 'Please enter a valid email address with .com';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: '********',
                suffixIcon: _passwordController.text.length >= 8
                    ? Icon(Icons.check_circle, color: Colors.green)
                    : null,
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 8) {
                  return 'Password must be at least 8 characters';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward, color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 20),
            LogWidget(
              formKey: _formKey,
              text: 'Login',
              navigation: HomeScreen(),
            ),
            SizedBox(height: 20),
            LogWidget(
              formKey: _formKey,
              text: 'Sign Up',
              navigation: SignupScreen(),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconWidget(
                  icon: Icon(
                    Icons.g_mobiledata_outlined,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
                IconWidget(
                  icon: Icon(Icons.facebook, color: Colors.blue, size: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
