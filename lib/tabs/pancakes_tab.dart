import 'package:donut_app_2c_tovar/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  //Lista de donas
   final List donutsOnSale = [
     // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Nutella","Krispy Cream", "65", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Cream", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Hershey's", "Donkey Donut", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Banana", "Donkey Donut", "60", Colors.yellow, "lib/images/chocolate_donut.png"],
    ["Ice Cream", "Krispy Cream", "78", Colors.pink, "lib/images/strawberry_donut.png"],
    ["Carlos V", "Krispy Cream", "99", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Peanut Butter","Krispy Cream", "81", Colors.orange, "lib/images/icecream_donut.png"],
 
  ];
  PancakesTab ({super.key});
   @override
   Widget build(BuildContext context) {
    return GridView.builder(
       //Cuantos elementos tiene
       itemCount: donutsOnSale.length,
       padding: const EdgeInsets.all(12),
       //Encargado de organizar la cuadrícula
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         //Determina el número de columnas
         crossAxisCount: 2,
         //Relación de aspecto
         childAspectRatio: 1 / 1.5),
       itemBuilder: (context, index){
         //Elemento individual de la cuadrícula
         return DonutTile(
           donutFlavor: donutsOnSale[index][0],
           donutStore: donutsOnSale[index][1],
           donutPrice: donutsOnSale[index][2],
           donutColor: donutsOnSale[index][3],
           imageName: donutsOnSale[index][4],
         );
       });
   }
 }