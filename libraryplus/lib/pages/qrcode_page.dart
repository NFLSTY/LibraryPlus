import 'package:flutter/material.dart';
import 'package:libraryplus/pages/home_page/home_page.dart';
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
                  height: 400,
                  width: 400,
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
                        backgroundColor: WidgetStatePropertyAll(Color(0xff7752FE)),
                        overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                            if (states.contains(WidgetState.pressed)) {
                              return Colors.red;
                            }
                            return null;},
                        )),
                    child: const Icon(
                      Icons.home_sharp,
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
