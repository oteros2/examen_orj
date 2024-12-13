import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? texto;

  const CustomCard({super.key, required this.imageUrl, this.title, this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          if (title != null)
            Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                alignment: AlignmentDirectional.centerStart,
                child: Text(title ?? 'Desconocido')),
          if (texto != null)
            Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                alignment: AlignmentDirectional.centerStart,
                child: Text(texto ?? 'No hay informacion')),
          Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              alignment: AlignmentDirectional.centerEnd,
              child:
                  TextButton(onPressed: () {}, child: const Text('Reservar'))),
        ],
      ),
    );
  }
}
