import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {

  final ImageProvider? imageProvider;
  final double imageRadius;

  const CircleImage({Key? key, this.imageProvider, this.imageRadius = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}