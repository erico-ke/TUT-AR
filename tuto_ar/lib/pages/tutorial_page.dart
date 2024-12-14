import 'package:flutter/material.dart';

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
                child: Image.asset('arduino.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Arduino basics 101',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.list),
                  title: Text('List Item ${index + 1}'),
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
        ],
      ),
    );
  }
}
