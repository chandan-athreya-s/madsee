import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 24),
            Text('Meditation App', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
            SizedBox(height: 16),
            Text('Our mission is to help you find peace, focus, and relaxation through guided meditation and soothing music. We believe in the power of mindfulness and strive to make meditation accessible to everyone.'),
            SizedBox(height: 16),
            Text('Contact us: meditation@app.com'),
          ],
        ),
      ),
    );
  }
}
