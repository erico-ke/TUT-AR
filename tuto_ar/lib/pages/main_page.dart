import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/login.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome back!'),
      ),
      body: Center(
        child: Container(
          child: Text('Main Page'),
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
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Icon(
                    Icons.home,
                    color: const Color(0xff22577A),
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
                  onPressed: () {},
                  child: Icon(Icons.search),
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
                  onPressed: () {},
                  child: Icon(Icons.person),
                ),
              ),
            ],
          )),

      /* bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        // Handle item tap
      },
    ), */
    );
  }
}
