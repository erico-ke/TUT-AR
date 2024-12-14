import 'package:flutter/material.dart';
import 'package:tuto_ar/pages/bookmark_page.dart';
import 'package:tuto_ar/pages/main_page.dart';
import 'package:tuto_ar/pages/search_page.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),  
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto de perfil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('profile_picture.png'), // Reemplazar con imagen de red o local
              backgroundColor: Colors.grey[300],
            ),
            SizedBox(height: 16),
            // Nombre del usuario
            Text(
              'User_tuto_ar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Correo electrónico
            Text(
              'user@tuto-ar.tech',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 24),
            // Botón Editar Perfil
            ElevatedButton.icon(
              onPressed: () {
                // Acción para editar perfil
                print('Editar perfil');
              },
              icon: Icon(Icons.edit),
              label: Text('Editar Perfil'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Botón ancho completo
              ),
            ),
            SizedBox(height: 16),
            // Botón Cerrar Sesión
            OutlinedButton.icon(
              onPressed: () {
                // Acción para cerrar sesión
                print('Cerrar sesión');
              },
              icon: Icon(Icons.logout),
              label: Text('Cerrar Sesión'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),bottomNavigationBar: Container(
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