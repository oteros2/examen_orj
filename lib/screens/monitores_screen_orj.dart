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
    );
  }
}
