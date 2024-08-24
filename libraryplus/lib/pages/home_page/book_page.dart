import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Cari buku',
                    style: title1.copyWith(fontSize: 15),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: textColor3,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
