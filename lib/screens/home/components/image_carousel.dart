import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';

import '../../../demoData.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(alignment: Alignment.bottomRight, children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          itemCount: demoBigImages.length,
          itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(demoBigImages[index])),
        ),
        Positioned(
            bottom: defaultPadding,
            right: defaultPadding,
            child: Row(
              children: List.generate(
                demoBigImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: IndicatorButton(
                    isActive: index == _currentPage,
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}

class IndicatorButton extends StatelessWidget {
  const IndicatorButton({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white24,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
