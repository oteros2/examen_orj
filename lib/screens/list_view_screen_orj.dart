import 'package:fl_examen_orj/screens/screens.dart';
import 'package:flutter/material.dart';

class ListViewScreenOrj extends StatelessWidget {
  const ListViewScreenOrj({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Aviso"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "El sistema de reservas está deshabilitado en estos momentos."),
                SizedBox(height: 20),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("cancelar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
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
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.ballot),
            title: const Text('Pistas'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PistasScreenOrj()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Monitores'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MonitoresScreenOrj()));
            },
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Reservas'),
            onTap: () {
              displayDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
