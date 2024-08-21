import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircleAvatar(
                radius: 200,
                backgroundImage: AssetImage('assets/ic_profile.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Halo Naufal S',
              style: TextStyle(
                fontSize: 30  
              ),
            ),
          )
        ],
      ),
    );
  }
}
