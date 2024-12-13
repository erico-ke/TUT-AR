import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'; // Plugin de ARCore
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart'; // Para abrir enlaces
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Tutorial App',
      theme: ThemeData(
        primaryColor: Color(0xFF22577A),
        accentColor: Color(0xFF38A3A5),
        scaffoldBackgroundColor: Color(0xFFC7F9CC),
        textTheme: TextTheme(
          headline1: TextStyle(color: Color(0xFF22577A), fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color: Color(0xFF15354A), fontSize: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF57CC99),
            onPrimary: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF22577A),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: LoginScreen(),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserTypeScreen()),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

// User Type Selection
class UserTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose User Type")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApprenticeScreen()),
                );
              },
              child: Text("Aprendiz"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MasterScreen()),
                );
              },
              child: Text("Maestro"),
            ),
          ],
        ),
      ),
    );
  }
}

// Apprentice Screen
class ApprenticeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutoriales")),
      body: TutorialList(),
    );
  }
}

// Master Screen
class MasterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crear Tutorial")),
      body: TutorialCreator(),
    );
  }
}

// Tutorial List Screen
class TutorialList extends StatelessWidget {
  Future<List<Map<String, dynamic>>> fetchTutorials() async {
    final response = await http.get(Uri.parse('https://api.example.com/tutorials'));
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception('Error al cargar tutoriales');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: fetchTutorials(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final tutorials = snapshot.data ?? [];
          return ListView.builder(
            itemCount: tutorials.length,
            itemBuilder: (context, index) {
              final tutorial = tutorials[index];
              return ListTile(
                title: Text(tutorial['title']),
                subtitle: Text('Rating: ${tutorial['rating']}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TutorialDetail(tutorial: tutorial),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}

// Tutorial Detail Screen
class TutorialDetail extends StatelessWidget {
  final Map<String, dynamic> tutorial;

  TutorialDetail({required this.tutorial});

  Future<List<Map<String, String>>> fetchMaterials(List<String> materialNames) async {
    final List<Map<String, String>> materials = [];
    for (String name in materialNames) {
      final response = await http.get(Uri.parse('https://api.example.com/search?q=$name'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        materials.add({
          "name": name,
          "link": data['results'][0]['url'] ?? "#",
        });
      } else {
        materials.add({"name": name, "link": "#"});
      }
    }
    return materials;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tutorial['title'])),
      body: FutureBuilder<List<Map<String, String>>>(
        future: fetchMaterials(List<String>.from(tutorial['materials'])),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final materials = snapshot.data ?? [];
            return Column(
              children: [
                Text("Materiales necesarios:", style: TextStyle(fontSize: 20)),
                Expanded(
                  child: ListView.builder(
                    itemCount: materials.length,
                    itemBuilder: (context, index) {
                      final material = materials[index];
                      return ListTile(
                        title: Text(material['name'] ?? 'Desconocido'),
                        trailing: ElevatedButton(
                          onPressed: () async {
                            final url = material['link'] ?? "#";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'No se pudo abrir $url';
                            }
                          },
                          child: Text("Comprar"),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ARView(),
                      ),
                    );
                  },
                  child: Text("Iniciar Tutorial"),
                )
              ],
            );
          }
        },
      ),
    );
  }
}

// AR View
class ARView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vista AR")),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    // Aquí se configura la lógica de AR (objetos, flechas, etc.)
    controller.addNode(
      node: ArCoreReferenceNode( // Ejemplo: agregar una flecha
        name: "Arrow",
        object3DFileName: "arrow.obj",
        position: Vector3(0, 0, -1),
      ),
    );
  }
}

// Tutorial Creator
class TutorialCreator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Aquí va el formulario para crear tutoriales"),
    );
  }
}
