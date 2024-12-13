import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  image: AssetImage('logo.jpg'),
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
                      cursorColor: const Color(0xff0a1699),
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
                    cursorColor: const Color(0xff0a1699),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
