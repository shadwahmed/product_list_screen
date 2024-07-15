import 'package:equatable/equatable.dart';

class Product extends Equatable {
  String coverImageUrl;
  int sold;
  List<String> images;
  int ratingsQuantity;
  String id;
  String title;
  String description;
  int price;
  double ratingsAverage;

  Product(
      {required this.sold,
      required this.images,
      required this.coverImageUrl,
      required this.ratingsQuantity,
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.ratingsAverage});

  @override
  List<Object?> get props => [id];
}
