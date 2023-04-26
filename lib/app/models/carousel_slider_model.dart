import 'package:flutter/material.dart';
import 'package:perfume_maker/app/data/constants/app_assets.dart';

class CarouselSliderModel {
  String image;
  String title;
  String subTitle;
  String price;
  String quantity;
  String description;

  CarouselSliderModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.quantity,
    required this.description,
  });
}

List<Widget> carouselSliderItems = [
  Image.asset(AppAssets.kPerfume1),
  Image.asset(AppAssets.kPerfume2),
  Image.asset(AppAssets.kPerfume3),
];

List<CarouselSliderModel> carouselSliderList = [
  CarouselSliderModel(
    image: AppAssets.kPerfume1,
    title: 'COCO NOIR',
    subTitle: 'CHANEL PARIS',
    price: "\$268",
    quantity: '200 ml',
    description:
        "COCO NOIR is the embodiment of a black that reveals femininity. The contemporary expression of a magnetic sensuality told in a modern ambery fragrance with luminous notes. A radical creation.",
  ),
  CarouselSliderModel(
    image: AppAssets.kPerfume2,
    title: 'VERSACE EROS',
    subTitle: 'VERSACE',
    price: "\$300",
    quantity: '150 ml',
    description:
        "VERSACE EROS is the embodiment of a black that reveals femininity. The contemporary expression of a magnetic sensuality told in a modern ambery fragrance with luminous notes. A radical creation.",
  ),
  CarouselSliderModel(
    image: AppAssets.kPerfume3,
    title: 'VERSACE EROS FLAME',
    subTitle: 'VERSACE',
    price: "\$299",
    quantity: '120 ml',
    description:
        "VERSACE EROS FLAME is the embodiment of a black that reveals femininity. The contemporary expression of a magnetic sensuality told in a modern ambery fragrance with luminous notes. A radical creation.",
  ),
];
