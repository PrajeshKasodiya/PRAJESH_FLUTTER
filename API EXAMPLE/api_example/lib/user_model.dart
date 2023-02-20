class UserModel {
  List<Carts>? carts;
  int? total;
  int? skip;
  int? limit;

  UserModel({this.carts, this.total, this.skip, this.limit});

  UserModel.fromJson(Map<String, dynamic> json) {
    carts = json["carts"] == null
        ? null
        : (json["carts"] as List).map((e) => Carts.fromJson(e)).toList();
    total = json["total"];
    skip = json["skip"];
    limit = json["limit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (carts != null) {
      _data["carts"] = carts?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Carts {
  int? id;
  List<Products>? products;
  int? total;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;

  Carts(
      {this.id,
      this.products,
      this.total,
      this.discountedTotal,
      this.userId,
      this.totalProducts,
      this.totalQuantity});

  Carts.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    products = json["products"] == null
        ? null
        : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
    total = json["total"];
    discountedTotal = json["discountedTotal"];
    userId = json["userId"];
    totalProducts = json["totalProducts"];
    totalQuantity = json["totalQuantity"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if (products != null) {
      _data["products"] = products?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["discountedTotal"] = discountedTotal;
    _data["userId"] = userId;
    _data["totalProducts"] = totalProducts;
    _data["totalQuantity"] = totalQuantity;
    return _data;
  }
}

class Products {
  int? id;
  String? title;
  int? price;
  int? quantity;
  int? total;
  var discountPercentage;
  int? discountedPrice;

  Products(
      {this.id,
      this.title,
      this.price,
      this.quantity,
      this.total,
      this.discountPercentage,
      this.discountedPrice});

  Products.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    price = json["price"];
    quantity = json["quantity"];
    total = json["total"];
    discountPercentage = json["discountPercentage"];
    discountedPrice = json["discountedPrice"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["price"] = price;
    _data["quantity"] = quantity;
    _data["total"] = total;
    _data["discountPercentage"] = discountPercentage;
    _data["discountedPrice"] = discountedPrice;
    return _data;
  }
}
