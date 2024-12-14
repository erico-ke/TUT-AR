import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/main_page.dart';
import 'package:tuto_ar/pages/search_page.dart';
import 'package:tuto_ar/pages/user_profile_page.dart';

class BookmarkPage extends StatelessWidget {
  final List<Map<String, String>> bookmarks = [
    {
      'icon': Icons.bookmark.toString(),
      'title': 'Tutorial sample',
      'subtitle': '5 ★'
    },
    {
      'icon': Icons.bookmark.toString(),
      'title': 'Tutorial sample',
      'subtitle': '3.5 ★'
    },
    {
      'icon': Icons.bookmark.toString(),
      'title': 'Tutorial sample',
      'subtitle': '4.5 ★'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmarks'),
      ),
      body: ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.bookmark),
            title: Text(bookmarks[index]['title']!),
            subtitle: Text(bookmarks[index]['subtitle']!),
          );
        },
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
                width: MediaQuery.of(context).size.width / 4,
                height: 70.0,
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
                        builder: (context) => BookmarkPage(),
                      ),
                    );
                  },
                  child: Icon(color: const Color(0xff22577A),Icons.bookmark),
                ),
              ),
              Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 4,
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
                          builder: (context) => UserProfilePage()),
                    );
                  },
                  child: Icon(Icons.person),
                ),
              ),
            ]))
    );
  }
}