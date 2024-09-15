import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/honu_screen.dart';
import 'package:flutter_application_2/screen/proceso_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100.0,
            height: 100.0,
            child:
                Image.asset('assets/imagen/HIF_LOGO3.png', fit: BoxFit.contain),
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(),
            ),
            ListTile(
              title: const Text('PROCESO'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProcesoScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('HIF HARU ONI'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HonuScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('NOTICIAS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/imagen/molino_1.png',
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'El cambio climático es un desafío global.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Requiere una solución global ahora',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/imagen/datos_cont2.png',
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 110,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imagen/fondo_1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail, color: Colors.blueAccent),
                SizedBox(width: 20),
                Icon(Icons.facebook, color: Colors.blueAccent),
                SizedBox(width: 20),
                Icon(Icons.link, color: Color.fromARGB(255, 11, 20, 201)),
                SizedBox(width: 20),
                Icon(Icons.youtube_searched_for,
                    color: Color.fromARGB(255, 11, 20, 201)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
