import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
