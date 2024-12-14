import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/main_page.dart';
import 'package:tuto_ar/pages/user_page.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome back!'),
      ),
      body: Center(
        child: Container(
          child: 
        ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        )
        ),
      ),
      bottomNavigationBar: Container(
          color: const Color(0xffC7F9CC),
          height: 70.0,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserPage()),
                    );
                  },
                  child: Icon(Icons.person),
                ),
              ),
            ],
          )),
    );
  }
}
