import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final String imageUrl;
  final String? title;


  const CustomAvatar({super.key, required this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Text(title ?? 'Desconocido'),
      ],
    );
  }

}