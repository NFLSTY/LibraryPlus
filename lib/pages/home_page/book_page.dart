import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';
import 'package:flutter/services.dart';
import 'package:libraryplus/widgets/home_book_items.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backgroundColor2,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Cari buku',
                    style: title1.copyWith(fontSize: 20),
                  )
                ],
              )
            ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              decoration: InputDecoration(
              fillColor: backgroundColor1,
              filled: true,
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 15), // Adjust the position of the icon
                child: Icon(
                Icons.search_sharp,
                size: 35,
                color: Colors.black,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
              ),
              ),
            ),
          ),
          SizedBox(
            height: 13
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'REKOMENDASI BUKU',
                      style: blackTextStyle.copyWith(
                        color: textColor3,
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                    Text(
                      'Lihat Semua',
                      style: blackTextStyle.copyWith(
                        color: backgroundColor3,
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                )
              ],
            )
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                    HomeBookItem(
                      onTap: () {},
                      imageUrl: 'assets/img_coverbook1.png',
                      title: 'HARRY POTTER\nAND THE GOBLET FIRE',
                    ),
                  ],
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
