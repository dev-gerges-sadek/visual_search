import 'package:flutter/material.dart';

class LogWidget extends StatelessWidget {
  const LogWidget({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.text,
    required this.navigation,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final String text;
  final Widget navigation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.red),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // Perform login logic here
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => navigation),
            );
          }
        },

        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
