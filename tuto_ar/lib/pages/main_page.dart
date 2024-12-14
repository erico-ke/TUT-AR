import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/bookmark_page.dart';
import 'package:tuto_ar/pages/search_page.dart';
import 'package:tuto_ar/pages/user_profile_page.dart';

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
            height: 70.0, 
            child: Row(children: [
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    color: const Color(0xff22577A),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 70.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                      ),
                    );
                  },
                  child: Icon(Icons.search),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: 70.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookmarkPage(),
                      ),
                    );
                  },
                  child: Icon(Icons.bookmark),
                ),
              ),
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 4,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xffC7F9CC),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserProfilePage()),
                    );
                  },
                  child: Icon(Icons.person),
                ),
              ),
            ])));
  }
}
