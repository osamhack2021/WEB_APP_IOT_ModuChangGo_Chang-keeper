import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final storageImages = [
  "assets/chango1.jpg",
  "assets/chango1_1.jpg",
  "assets/chango2.jpg",
  "assets/chango2_1.jpg",
  "assets/chango3.jpg",
  "assets/chango4.jpg",
];

class StorageDetailPageImages extends StatelessWidget {
  final int storage_index;

  const StorageDetailPageImages({required this.storage_index});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
      ),
      items: storageImages.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
