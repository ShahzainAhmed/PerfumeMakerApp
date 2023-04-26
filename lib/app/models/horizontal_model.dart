import 'package:perfume_maker/app/data/constants/app_assets.dart';

class HorizontalModel {
  String image;
  String title;
  String subTitle;

  HorizontalModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<HorizontalModel> horizontalList = [
  HorizontalModel(
    image: AppAssets.kPerfume1,
    title: 'COCO NOIR',
    subTitle: 'CHANEL PARIS',
  ),
  HorizontalModel(
    image: AppAssets.kPerfume2,
    title: 'VERSACE EROS',
    subTitle: 'VERSACE',
  ),
  HorizontalModel(
    image: AppAssets.kPerfume3,
    title: 'VERSACE EROS FLAME',
    subTitle: 'VERSACE',
  ),
];
