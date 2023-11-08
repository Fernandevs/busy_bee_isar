import 'dart:io';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';

class TodoImagePicker extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final VoidCallback onDeleteImage;
  final void Function({File? image}) onImageChanged;
  final File? image;

  const TodoImagePicker({
    super.key,
    required this.color,
    required this.onPressed,
    required this.onDeleteImage,
    required this.onImageChanged,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return FDottedLine(
      color: color,
      strokeWidth: 2.0,
      dottedLength: 10.0,
      space: 5,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Center(
          child: image == null
              ? IconButton(
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    minimumSize: const Size(
                      double.infinity,
                      double.infinity,
                    ),
                  ),
                  icon: const Icon(Icons.add, size: 100),
                  onPressed: () {
                    onPressed();
                    onImageChanged();
                  },
                )
              : Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 200,
                      child: Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: <Widget>[
                          IconButton(
                            onPressed: onDeleteImage,
                            icon: const Icon(Icons.delete_outline),
                          ),
                          IconButton(
                            onPressed: () {
                              print('Image: ${image.toString()}');
                              onImageChanged(image: image);
                              onPressed();
                            },
                            icon: const Icon(Icons.change_circle_outlined),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
