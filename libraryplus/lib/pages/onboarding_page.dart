import 'package:flutter/material.dart';
import 'package:libraryplus/pages/login_page.dart';
import 'package:libraryplus/theme.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/boy_carrying_books.png',
            width: 117,
            height: 290,
          ),
          const SizedBox(
            height: 76,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 28,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 69,
            ),
            decoration: BoxDecoration(
              color: backgroundColor3,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text(
                  'Baca buku membangun negeri\fyang sangat indah',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: semiBold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  'Project ini dibuat dalam rangka\fbelajar lebih dalam soal mobile programming',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor2,
                    minimumSize: Size(256, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: whiteTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
