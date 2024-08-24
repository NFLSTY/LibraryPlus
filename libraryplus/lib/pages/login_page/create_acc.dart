import 'package:flutter/material.dart';
import 'package:libraryplus/pages/home_page/home_page.dart';
import 'package:libraryplus/theme.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  final _formState = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            height: 50,
          ),
          Form(
            key: _formState,
            child: Column(
              children: [
                //Input Name 
                const Text(
                  'Nama Lengkap',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == '') {
                      return "Nama tidak boleh kosong!";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //Input NIM 
                const Text(
                  'Nomor Induk Mahasiswa',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: _nimController,
                  validator: (value) {
                    if (value == '') {
                      return "NIM tidak boleh kosong!";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
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
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == '') {
                      return "Email tidak boleh kosong!";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
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
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value == '') {
                      return "Password tidak boleh kosong!";
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            )
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formState.currentState!.validate()) {
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
              style: TextStyle(
                color: backgroundColor1, 
                fontSize: 20, 
                fontWeight: semiBold
              ),
            )
          )
        ],
      ),
    );
  }
}