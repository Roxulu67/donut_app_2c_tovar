import 'package:donut_app_2c_tovar/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAdd; // Callback para agregar al carrito

// Lista de pancakes en venta
final List<List<dynamic>> donutsOnSale = [
  // [pancakeFlavor, pancakeStore, pancakePrice, pancakeColor, imageName]
  ["Strawberry", "Los Bisquets Obregón", "36", Colors.blue, "lib/images/pancake1.png"],
  ["Blueberries", "Toks", "45", Colors.red, "lib/images/pancake2.png"],
  ["Whipped cream", "IHOP", "84", Colors.purple, "lib/images/pancake3.png"],
  ["Nature", "Vips", "95", Colors.brown, "lib/images/pancake4.png"],
  ["Sweet combination", "Los Bisquets Obregón", "36", Colors.blue, "lib/images/pancake5.png"],
  ["Chocolate", "Toks", "45", Colors.red, "lib/images/pancake6.png"],
  ["Crepe", "IHOP", "84", Colors.purple, "lib/images/pancake7.png"],
  ["Super Honey", "Vips", "95", Colors.brown, "lib/images/pancake8.png"],
];


  // Constructor que recibe la función de callback
  PancakesTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    // Widget para usar cuadrícula
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemBuilder: (context, index) {
        // Cada elemento individual
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: () {
            // Llama a la función de callback y pasa el precio
            onAdd(double.parse(donutsOnSale[index][2]));
          },
        );
      },
    );
  }
}