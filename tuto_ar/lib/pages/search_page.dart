import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/bookmark_page.dart';
import 'package:tuto_ar/pages/main_page.dart';
import 'package:tuto_ar/pages/user_profile_page.dart';


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
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Juan Pérez'),
                subtitle: Text('Ingeniero de Software'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('María López'),
                subtitle: Text('Diseñadora Gráfica'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Carlos Gómez'),
                subtitle: Text('Gerente de Proyectos'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Ana Torres'),
                subtitle: Text('Especialista en Marketing'),
              ),
            ],
          ),
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
            ]))
    );
  }
}
