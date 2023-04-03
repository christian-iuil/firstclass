import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff40513B).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CircleAvatar(
                      backgroundColor: Color(0xff609966),
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Color(0xffEDF1D6),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'User name',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Date of birth',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.key,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 18),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xff9DC08B),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffEDF1D6)),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ); // MaterialApp
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: []),
      ),
    );
  }
}
