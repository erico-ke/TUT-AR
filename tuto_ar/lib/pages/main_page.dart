import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/search_page.dart';
import 'package:tuto_ar/pages/user_page.dart';

final List<int> numbers = [1, 2, 3, 4, 5];
final List<String> names = ['Arduino Basics 101', 'Changing a Tire', 'How to cook risotto', 'How to change a diaper', 'Giving your Laptop a new Ram'];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome back!'),
        ),
        body: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text('Continue learning!'),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  height: MediaQuery.of(context).size.height / 1.3,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: numbers.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Card(
                                color: Colors.blue,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  child: Center(
                                    child: Text(
                                      numbers[index].toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 36.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              flex: 2,
                              child: Text(
                                '${names[index]}',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            color: const Color(0xffC7F9CC),
            height: 70.0, // Doubled the height from default 56.0
            child: Row(children: [
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
                    color: const Color(0xff22577A),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
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
            ])));
  }
}
