import 'package:fl_examen_orj/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class PistasScreenOrj extends StatelessWidget {
   
  const PistasScreenOrj({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Pistas"),
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
            CustomCard(
              imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
              title: 'Pista de padel',
              texto: 'Commodo labore occaecat dolore sint aliqua aliquip nisi ullamco labore ipsum incididunt est. Nisi ea incididunt nostrud aliqua ea culpa irure qui esse. Excepteur officia ex deserunt nisi ullamco proident laboris veniam commodo. Aute sit laboris mollit minim ipsum irure aute. Velit voluptate ea qui dolore dolor occaecat sit.'),
              CustomCard(
              imageUrl: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg', 
              title: 'Piscina cubierta',
              texto: 'Commodo labore occaecat dolore sint aliqua aliquip nisi ullamco labore ipsum incididunt est. Nisi ea incididunt nostrud aliqua ea culpa irure qui esse. Excepteur officia ex deserunt nisi ullamco proident laboris veniam commodo. Aute sit laboris mollit minim ipsum irure aute. Velit voluptate ea qui dolore dolor occaecat sit.'),
              CustomCard(
              imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
              title: 'PCamporde baloncesto',
              texto: 'Commodo labore occaecat dolore sint aliqua aliquip nisi ullamco labore ipsum incididunt est. Nisi ea incididunt nostrud aliqua ea culpa irure qui esse. Excepteur officia ex deserunt nisi ullamco proident laboris veniam commodo. Aute sit laboris mollit minim ipsum irure aute. Velit voluptate ea qui dolore dolor occaecat sit.'),
          ],
        ),
      ) ,
    );
  }
}