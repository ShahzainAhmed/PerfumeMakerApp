import 'package:perfume_maker/app/data/constants/app_assets.dart';

class VerticalModel {
  String title;
  String price;
  String image;
  String quantity;

  VerticalModel({
    required this.title,
    required this.price,
    required this.quantity,
    required this.image,
  });
}

List verticalList = [
  VerticalModel(
    title: 'COCO NOIR',
    price: "\$268",
    quantity: '100 ml',
    image: AppAssets.kPerfume1,
  ),
  VerticalModel(
    title: 'VERSACE EROS',
    price: "\$300",
    quantity: '100 ml',
    image: AppAssets.kPerfume2,
  ),
  VerticalModel(
    title: 'VERSACE EROS FLAME',
    price: "\$299",
    quantity: '100 ml',
    image: AppAssets.kPerfume3,
  ),
];
