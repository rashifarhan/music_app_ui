import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app_ui/data.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: playListImages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: playListImages[index])),
        );
      },
    );
  }
}
