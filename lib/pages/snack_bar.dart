import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('snack bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('hello'),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text(
            'show me',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
