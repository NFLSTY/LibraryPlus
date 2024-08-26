import 'package:flutter/material.dart';
import 'package:libraryplus/pages/login_page/login_page.dart';
import 'package:libraryplus/pages/profile_page/userdata.dart';
import 'package:libraryplus/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 75,
                      height: 75,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('assets/ic_profile.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Halo Naufal S',
                      style: blackTextStyle.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserData()));
                },
                child: SizedBox(
                  height: 40,
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person,
                        size: 26,
                      ),
                      SizedBox(width: 8),
                      Text('Informasi Akun', style: blackTextStyle.copyWith(fontSize: 18)),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.settings,
                      size: 26,
                    ),
                    SizedBox(width: 8),
                    Text('Pengaturan', style: blackTextStyle.copyWith(fontSize: 18)),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.key_rounded,
                      size: 26,
                    ),
                    SizedBox(width: 8),
                    Text(' Ganti Password', style: blackTextStyle.copyWith(fontSize: 18)),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.shield_moon_rounded,
                      size: 26,
                    ),
                    SizedBox(width: 8),
                    Text('kebijakan privasi', style: blackTextStyle.copyWith(fontSize: 18)),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () async {
                  final Uri url = Uri.parse('https://rc.amikom.ac.id/');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(
                      url,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    throw 'Cannot launch $url';
                  }
                },
                child: SizedBox(
                  height: 40,
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.web,
                        size: 26,
                      ),
                      SizedBox(width: 8),
                      Text('Kunjungi website kami', style: blackTextStyle.copyWith(fontSize: 18)),
                      Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Row(
                    mainAxisSize:
                        MainAxisSize.min, // Adjusts the size of the button to fit its content
                    mainAxisAlignment: MainAxisAlignment.center, // Centers the content
                    children: [
                      Icon(Icons.logout_rounded, color: Colors.white),
                      SizedBox(width: 20), // Adds space between the icon and the text
                      Text(
                        'Keluar',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
