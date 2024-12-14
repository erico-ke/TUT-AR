import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/search_page.dart';
import 'package:tuto_ar/pages/user_page.dart';

final List<String> names = ['Arduino Basics 101', 'Changing a Tire', 'How to cook risotto', 'How to change a diaper', 'Giving your Laptop a new Ram'];
final List<String> imagePaths = [
  'assets/images/arduino.png',
  'assets/images/tire.png',
  'assets/images/risotto.png',
  'assets/images/diaper.png',
  'assets/images/ram.png',
];

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
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: imagePaths.length,
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
                                height: MediaQuery.of(context).size.height / 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Image.asset(
                                    imagePaths[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            flex: 2,
                            child: Text(
                              names[index],
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
        height: 70.0,
        child: Row(
          children: [
            Expanded(
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
            Expanded(
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
            Expanded(
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
                    MaterialPageRoute(builder: (context) => UserPage()),
                  );
                },
                child: Icon(Icons.person),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

