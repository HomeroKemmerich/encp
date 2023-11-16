import 'package:flutter/material.dart';

class AboutApPage extends StatelessWidget {
  const AboutApPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Container(
        width: double.infinity,
        child: const Column(
          children: [
            Text(
              'Contador',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Text(
              'by Homero',
              style: TextStyle(
                  fontSize: 14
              ),
            )
          ],
        ),
      ),
    );
  }
}
