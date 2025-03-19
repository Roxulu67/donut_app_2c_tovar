import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;
  final String donutStore;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.donutStore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Container(
        width: 220, // Tarjeta más ancha
        height: 280, // Tarjeta más alta para mejor proporción
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Price Tag
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  '\$$donutPrice',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Donut Image (Más grande)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 140, // Imagen más grande
                child: Image.asset(imageName, fit: BoxFit.contain),
              ),
            ),

            // Donut Flavor
            Text(
              donutFlavor,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22, // Texto más grande
              ),
            ),
            const SizedBox(height: 4),

            // Donut Store
            Text(
              donutStore,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16, // Texto más grande
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),

            // Love icon + add button (alineado correctamente)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border, size: 28), // Íconos más grandes
                  Icon(Icons.add, size: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


