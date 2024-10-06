import 'package:flutter/material.dart';

import '../models/image.dart';

SizedBox planetImage(image) {
  return SizedBox(
    height: 300,
    width: 300,
    child: Image.asset(
      image,
      fit: BoxFit.fitWidth,
    ),
  );
}

Row profileAndTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: NetworkImage(profile), fit: BoxFit.cover),
        ),
      ),
      const Text(
        "Feed",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.grid_view_sharp,
          color: Colors.white,
          size: 30,
        ),
      ),
    ],
  );
}
