import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'LibraryPlus',
              style: TextStyle(
                fontSize: 40,
                backgroundColor: Colors.black,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 64,
            )
          ],
        ),
      ),
    );
  }
}
