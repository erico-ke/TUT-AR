import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Account'),
        ),
        body: Center(
            child: Column(children: [
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
              cursorColor: const Color(0xff22577A),
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
            cursorColor: const Color(0xff22577A),
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
                backgroundColor:
                    WidgetStateProperty.all<Color>(const Color(0xff38A3A5)),
                shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: const Text(
                'Create Account',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ])));
  }
}
