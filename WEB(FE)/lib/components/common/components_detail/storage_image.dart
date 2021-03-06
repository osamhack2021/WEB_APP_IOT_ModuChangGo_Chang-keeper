import 'package:flutter/material.dart';
import 'package:moduchango/design_data/styles.dart';

class StorageImage extends StatelessWidget {
  final int image_id;
  final String storageName;

  const StorageImage({required this.image_id, required this.storageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 270,
              height: 120,
              child: Image.asset(
                "assets/chango${(image_id % 9) + 1}.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Text(
              "$storageName",
              style: h2(mColor: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
