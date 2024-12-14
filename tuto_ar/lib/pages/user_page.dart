import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/main_page.dart';
import 'package:tuto_ar/pages/search_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome back!'),
      ),
      body: Center(
        child: Container(
          child: Text('User Page'),
        ),
      ),
      bottomNavigationBar: Container(
          color: const Color(0xffC7F9CC),
          height: 70.0, // Doubled the height from default 56.0
          child: Row(
            children: [
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  child: Icon(
                    Icons.home,
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ));
                  },
                  child: Icon(
                    Icons.search,
                  ),
                ),
              ),
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 3,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserPage()),
                    );
                  },
                  child: Icon(color: const Color(0xff22577A), Icons.person),
                ),
              ),
            ],
          )),
    );
  }
}
