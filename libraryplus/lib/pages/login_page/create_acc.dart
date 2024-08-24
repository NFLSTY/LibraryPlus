import 'package:flutter/material.dart';
import 'package:libraryplus/pages/home_page/home_page.dart';
import 'package:libraryplus/theme.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isErrorVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              'Buat Akun Baru',
              style: title1.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 29,
          ),
          //Input Name box
          const Text(
            'Nama Lengkap',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.white)),
              filled: true,
              fillColor: Colors.white,
              hintText: '*wajib diisi',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Input NIM box
          const Text(
            'Nomor Induk Mahasiswa',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _nimController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.white)),
              filled: true,
              fillColor: Colors.white,
              hintText: '*wajib diisi',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Input AMIKOM E-mail
          const Text(
            'E-mail AMIKOM',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.white)),
              filled: true,
              fillColor: Colors.white,
              hintText: '*wajib diisi',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Input App Password
          const Text(
            'Password Aplikasi',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(color: Colors.white)),
              filled: true,
              fillColor: Colors.white,
              hintText: '*wajib diisi',
              hintStyle: TextStyle(
                color: textColor1,
                fontStyle: FontStyle.italic,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                if (_nameController.text == '' &&
                    _nimController.text == '' &&
                    _emailController.text == '' &&
                    _passwordController.text == '') {
                  setState(() {
                    _isErrorVisible = true;
                  });
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: textColor1,
                minimumSize: Size(256, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                'Konfirmasi',
                style: TextStyle(color: backgroundColor1, fontSize: 20, fontWeight: semiBold),
              ))
        ],
      ),
    );
  }
}
