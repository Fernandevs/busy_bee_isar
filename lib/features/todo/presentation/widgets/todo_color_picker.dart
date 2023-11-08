import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

typedef OnColorChanged = void Function(Color color);

class TodoColorPicker extends StatelessWidget {
  final Color color;
  final OnColorChanged onColorChanged;

  const TodoColorPicker({
    super.key,
    required this.color,
    required this.onColorChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Icon(Icons.color_lens_outlined),
        const SizedBox(width: 8),
        const Text('Color'),
        const SizedBox(width: 8),
        FilledButton.tonal(
          style: FilledButton.styleFrom(backgroundColor: color, elevation: 1),
          onPressed: () => showDialog<Color>(
            context: context,
            builder: (context) => AlertDialog(
              titleTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: context.pop,
                  child: const Text("Cerrar"),
                ),
              ],
              content: ColorPicker(
                pickersEnabled: const <ColorPickerType, bool>{
                  ColorPickerType.accent: false,
                  ColorPickerType.both: false,
                },
                color: color,
                width: 30,
                height: 30,
                borderRadius: 20,
                spacing: 10,
                heading: const Text('Elige un color'),
                onColorChanged: (color) {
                  onColorChanged(color);
                  context.pop();
                },
              ),
            ),
          ),
          child: null,
        ),
      ],
    );
  }
}
