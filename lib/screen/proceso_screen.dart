import 'package:flutter/material.dart';

class ProcesoScreen extends StatelessWidget {
  const ProcesoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
                image: NetworkImage(
                    'https://www.hifglobal.com/images/default-source/default-album/dsc6599-scaled.jpg?sfvrsn=f4bbbed8_0')),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('PROCESO',
                      style: TextStyle(color: Colors.lightBlueAccent)),
                  Text(
                      'Descubra como utilizamos tecnología innovadora para producir e-combustibles',
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
                  'Para producir e-Fuels necesitamos combinar dos elementos: hidrógeno verde  y dióxido de carbono reciclado. Con energía renovable, como la eólica o la solar, realizamos un proceso de electrólisis que nos permite separar la molécula de agua (H₂O) obteniendo oxígeno e hidrógeno. A continuación combinamos el hidrógeno con el CO₂ mediante un proceso llamado síntesis, obteniendo e-Metanol, un e-Combustible que podría utilizarse como producto final (combustible para barcos), o convertirlo en otros e-Combustibles, como e-Gasolina (coches) o jet (aviones).Los e-Combustibles son químicamente equivalentes a los combustibles fósiles convencionales, por lo que son compatibles con los motores y la infraestructura existentes y pueden utilizarse HOY. motores e infraestructuras existentes, y pueden utilizarse HOY.',
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
