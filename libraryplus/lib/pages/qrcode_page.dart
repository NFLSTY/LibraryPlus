import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:libraryplus/pages/home_page.dart';
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
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/nim.png',
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(25)),
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                            if (states.contains(WidgetState.pressed)) {
                              return Colors.red;
                            }},
                        )),
                    child: const Icon(
                      Icons.home_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
