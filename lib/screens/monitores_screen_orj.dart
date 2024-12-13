import 'package:fl_examen_orj/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';

class MonitoresScreenOrj extends StatelessWidget {
  const MonitoresScreenOrj({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Monitores"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.white54,
              child: Image(
                image: NetworkImage(
                    'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
              ),
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomAvatar(
              imageUrl:
                  'https://www.rctb1899.es/sites/default/files/noticia/imatge/2495_1.jpg',
              title: 'Rafa Nadal',
            ),
            SizedBox(height: 20),
            CustomAvatar(
              imageUrl:
                  'https://pbs.twimg.com/profile_images/1701651173822898176/v_01vBPF_400x400.jpg',
              title: 'Gisela Pulido',
            ),
            SizedBox(height: 20),
            CustomAvatar(
              imageUrl:
                  'https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg',
              title: 'Mireia Belmonte',
            ),
          ],
        ),
      ),
    );
  }
}
