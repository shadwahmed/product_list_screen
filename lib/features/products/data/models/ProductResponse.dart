import 'package:product_list_screen/features/products/domain/entities/product.dart';

class ProductResponse {
  ProductResponse({
    this.results,
    this.metadata,
    required this.data,
  });

  ProductResponse.fromJson(dynamic json)
      : data = json['data'] != null
      ? List<ProductModel>.from(json['data'].map((v) => ProductModel.fromJson(v)))
      : <ProductModel>[] {
    results = json['results'];
    metadata = json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
  }

  int? results;
  Metadata? metadata;
  List<ProductModel> data;
}

class ProductModel extends Product {
  ProductModel({
    required super.sold,
    required super.images,
    required super.ratingsQuantity,
    required super.id,
    required super.coverImageUrl,
    required super.title,
    required super.description,
    required super.price,
    required super.ratingsAverage,
    this.slug,
    this.quantity,
    this.category,
    this.brand,
    this.createdAt,
    this.updatedAt,
  });

  String? slug;
  int? quantity;
  Category? category;
  Brand? brand;
  String? createdAt;
  String? updatedAt;

  factory ProductModel.fromJson(dynamic json) {
    return ProductModel(
      sold: json['sold'],
      images: json['images'] != null ? json['images'].cast<String>() : [],
      ratingsQuantity: json['ratingsQuantity'],
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      ratingsAverage: (json['ratingsAverage'] as num).toDouble(),
      slug: json['slug'],
      quantity: json['quantity'],
      coverImageUrl: json['imageCover'],
      category:
          json['category'] != null ? Category.fromJson(json['category']) : null,
      brand: json['brand'] != null ? Brand.fromJson(json['brand']) : null,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class Brand {
  Brand({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  Brand.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  String? id;
  String? name;
  String? slug;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    return map;
  }
}

class Category {
  Category({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  Category.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
  }

  String? id;
  String? name;
  String? slug;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    return map;
  }
}

class Subcategory {
  Subcategory({
    this.id,
    this.name,
    this.slug,
    this.category,
  });

  Subcategory.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'];
  }

  String? id;
  String? name;
  String? slug;
  String? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['category'] = category;
    return map;
  }
}

class Metadata {
  Metadata({
    this.currentPage,
    this.numberOfPages,
    this.limit,
    this.nextPage,
  });

  Metadata.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }

  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['numberOfPages'] = numberOfPages;
    map['limit'] = limit;
    map['nextPage'] = nextPage;
    return map;
  }
}
