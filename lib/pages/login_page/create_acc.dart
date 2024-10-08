import 'package:flutter/material.dart';
import 'package:libraryplus/pages/home_page/home_page.dart';
import 'package:libraryplus/pages/login_page/login_page.dart';
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
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
                key: _formState,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft, // Input Name
                      child: Text(
                        'Nama Lengkap',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) { // Properly check for empty values
                          return "Nama tidak boleh kosong!";
                        }
                        return null; // Add a return statement to handle the case when no value is returned.
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft, // Input NIM
                      child: Text(
                        'Nomor Induk Mahasiswa',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _nimController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "NIM tidak boleh kosong!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft, // Input AMIKOM E-mail
                      child: Text(
                        'E-mail AMIKOM',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Email tidak boleh kosong!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.bottomLeft, // Input App Password
                      child: Text(
                        'Password Aplikasi',
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Password tidak boleh kosong!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 90,
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
                style: TextStyle(color: backgroundColor1, fontSize: 20, fontWeight: semiBold),
              )),
              SizedBox(
                height: 25,
              ),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Text(
                'Login',
                style: TextStyle(
                    color: textColor2,
                    fontSize: 15,
                    fontWeight: medium,
                ),
              ))
        ],
      ),
    );
  }
}
