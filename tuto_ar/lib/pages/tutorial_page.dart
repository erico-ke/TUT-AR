import 'package:flutter/material.dart';

final List<String> names = ['granos de café', 'agua', 'cafetera'];

class TutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.asset('coffee.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'The coffee final guide',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width ,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.list),
                  title: Text('${index + 1}. ${names[index]}'),
                  onTap: () {
                    // !TODO: CAMBIAR A LA PÁGINA DE DETALLE
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TutorialPage(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 300),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Start learning!'),
          ),
        ],
      ),
    );
  }
}
