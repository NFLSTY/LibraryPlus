import 'package:flutter/material.dart';
import 'package:libraryplus/pages/profile_page/profile_page.dart';
import 'package:libraryplus/theme.dart';

class UserData extends StatelessWidget {
  const UserData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 21,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    width: 105,
                    height: 105,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/ic_profile.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Naufal Satya P\n23.61.0253',
                    style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: backgroundColor1, borderRadius: BorderRadius.circular(14)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: backgroundColor1, borderRadius: BorderRadius.circular(14)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
