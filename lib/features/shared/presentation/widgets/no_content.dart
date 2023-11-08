import 'package:flutter/material.dart';

class NoContent extends StatelessWidget {
  const NoContent({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.info_outline_rounded, size: 350),
        SizedBox(height: 32),
        Text('No hay contenido disponible', style: TextStyle(fontSize: 24)),
      ],
    );
  }
}
