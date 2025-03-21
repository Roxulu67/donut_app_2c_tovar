import 'package:flutter/material.dart';

// Clase DonutTile que extiende StatelessWidget
class DonutTile extends StatelessWidget {
  final String donutFlavor; // Sabor de la dona
  final String donutStore; // Lugar de la dona
  final String donutPrice; // Precio de la dona
  final dynamic donutColor; // Color de la dona (dato dinámico)
  final String imageName; // Nombre de la imagen de la dona
  final Function onAdd; // Callback para agregar al carrito

  // Constructor de la clase DonutTile
  const DonutTile({
    super.key,
    required this.donutFlavor, // Sabor de la dona requerido
    required this.donutStore,
    required this.donutPrice, // Precio de la dona requerido
    this.donutColor, // Color de la dona opcional
    required this.imageName,
    required this.onAdd, // Recibe la función como parámetro
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0), // Espaciado alrededor del contenedor
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50], // Color de fondo del contenedor
          borderRadius: BorderRadius.circular(24), // Bordes redondeados
        ),
        child: Column(
          children: <Widget>[
            // Etiqueta de precio
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Alinea a la derecha
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100], // Color de fondo de la etiqueta
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 18), // Espaciado interno
                  child: Text(
                    '\$ $donutPrice', // Muestra el precio de la dona
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Texto en negrita
                      fontSize: 18, // Tamaño de fuente
                      color: donutColor[800], // Color del texto
                    ),
                  ),
                )
              ],
            ),
            // Imagen de la dona
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(imageName), // Carga la imagen de la dona
            ),
            // Texto del sabor de la dona
            Text(
              donutFlavor,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 4), // Espaciado entre textos
            // Nombre de la tienda
            Text(
              donutStore,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            // Icono de favorito + icono de agregar
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red, // Cambiado a rojo
                  ),
                  GestureDetector(
                    onTap: () {
                      onAdd(); // Llama a la función para agregar al carrito
                    },
                    child: Icon(
                      Icons.add, // Cambiado de "add" a "+"
                      size: 20,
                      color: Colors.blue, // Color opcional
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



