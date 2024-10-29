import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Detail extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final double rating;

  const Detail({
    Key? key,
    required this.title,
    required this.images,
    required this.description,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0, // Ajusta la altura del carrusel
              autoPlay: true,
              autoPlayInterval:
                  const Duration(seconds: 3), // Intervalo de cambio
              enlargeCenterPage: true, // Agranda la imagen central
              viewportFraction:
                  0.8, // Muestra un poco de las imágenes adyacentes
              aspectRatio: 16 / 9, // Ajusta la proporción del carrusel
              enableInfiniteScroll: true,
            ),
            items: images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5), // Espacio entre imágenes
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(15), // Bordes redondeados
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context)
                            .size
                            .width, // Ancho de la imagen igual al ancho de la pantalla
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < rating ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    );
                  }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
