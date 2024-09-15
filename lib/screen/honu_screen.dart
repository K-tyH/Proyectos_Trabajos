import 'package:flutter/material.dart';

class HonuScreen extends StatelessWidget {
  const HonuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/imagen/HARUONI.png'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Acerca de Haru Oni',
                      style: TextStyle(color: Colors.lightBlueAccent)),
                  Text(
                      'Utilizamos tecnología punta para aprovechar la fuerza de los vientos en Magallanes para producir e-Combustibles.',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 64, 186, 242))),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: const SingleChildScrollView(
                child: Text(
                  'Haru Oni es la primera instalación de e-Combustibles en funcionamiento del mundo. La planta utiliza energía renovable procedente del viento y un proceso llamado electrólisis para producir hidrógeno verde. El proyecto captura CO₂ de una fuente biogénica y utiliza un proceso de síntesis para combinar el CO₂ y el hidrógeno y producir e-Combustibles, incluida la gasolina verde sintética (e-Gasoline) y el gas licuado verde sintético (e-LG). El e-Combustible creará una vía para que las infraestructuras existentes pasen a ser bajas en carbono mediante la reutilización y el reciclaje continuos del CO₂. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
