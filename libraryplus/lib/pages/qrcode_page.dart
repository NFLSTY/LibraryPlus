import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/nim.png',
            ),
          ],
        ),
      ),
    );
  }
}
