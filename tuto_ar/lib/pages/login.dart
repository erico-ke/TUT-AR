import 'package:flutter/material.dart';


import 'package:tuto_ar/pages/camera_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                //container de foto logo
                height: 200,
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: const Image(
                  image: AssetImage('logo.png'),
                  height: double.maxFinite,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: Column(
                children: [
                  SizedBox(
                    //email
                    child: TextField(
                      maxLines: 1,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      cursorColor: const Color(0xff022577A),
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    cursorColor: const Color(0xff022577A),
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 220,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CameraPage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff38A3A5)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        // Acción del botón
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Action Required'),
                              content: const Text('Check your email'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Cerrar el popup
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue, // Color del texto
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      child: Text("Forgot Password?"),
                    ),
                  )
                ],
              ),
            ),
          ]),
    ));
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
