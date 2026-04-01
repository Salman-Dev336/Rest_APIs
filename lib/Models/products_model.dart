
class ProductsModel {
  bool? success;
  String? message;
  List<Data>? data;

  ProductsModel({this.success, this.message, this.data});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    if(json["success"] is bool) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  static List<ProductsModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(ProductsModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["success"] = success;
    data["message"] = message;
    if(data != null) {
      data["data"] = data.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

extension on String {
  MapEntry<dynamic, dynamic> toJson() {}
}

extension on Map<dynamic, dynamic> {
  toList() {}
}

class Data {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcat? subcat;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? color;
  String? size;
  bool? inWishlist;
  List<Images>? images;

  Data({this.id, this.onSale, this.salePercent, this.sold, this.sliderNew, this.sliderRecent, this.sliderSold, this.date, this.title, this.categories, this.subcat, this.shop, this.price, this.saleTitle, this.salePrice, this.description, this.color, this.size, this.inWishlist, this.images});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["on_sale"] is bool) {
      onSale = json["on_sale"];
    }
    if(json["sale_percent"] is int) {
      salePercent = json["sale_percent"];
    }
    if(json["sold"] is int) {
      sold = json["sold"];
    }
    if(json["slider_new"] is bool) {
      sliderNew = json["slider_new"];
    }
    if(json["slider_recent"] is bool) {
      sliderRecent = json["slider_recent"];
    }
    if(json["slider_sold"] is bool) {
      sliderSold = json["slider_sold"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["categories"] is Map) {
      categories = json["categories"] == null ? null : Categories.fromJson(json["categories"]);
    }
    if(json["subcat"] is Map) {
      subcat = json["subcat"] == null ? null : Subcat.fromJson(json["subcat"]);
    }
    if(json["shop"] is Map) {
      shop = json["shop"] == null ? null : Shop.fromJson(json["shop"]);
    }
    if(json["price"] is String) {
      price = json["price"];
    }
    if(json["sale_title"] is String) {
      saleTitle = json["sale_title"];
    }
    if(json["sale_price"] is String) {
      salePrice = json["sale_price"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["color"] is String) {
      color = json["color"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["in_wishlist"] is bool) {
      inWishlist = json["in_wishlist"];
    }
    if(json["images"] is List) {
      images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["on_sale"] = onSale;
    data["sale_percent"] = salePercent;
    data["sold"] = sold;
    data["slider_new"] = sliderNew;
    data["slider_recent"] = sliderRecent;
    data["slider_sold"] = sliderSold;
    data["date"] = date;
    data["title"] = title;
    if(categories != null) {
      data["categories"] = categories?.toJson();
    }
    if(subcat != null) {
      data["subcat"] = subcat?.toJson();
    }
    if(shop != null) {
      data["shop"] = shop?.toJson();
    }
    data["price"] = price;
    data["sale_title"] = saleTitle;
    data["sale_price"] = salePrice;
    data["description"] = description;
    data["color"] = color;
    data["size"] = size;
    data["in_wishlist"] = inWishlist;
    if(images != null) {
      data["images"] = images?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Images> fromList(List<Map<String, dynamic>> list) {
    return list.map(Images.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["url"] = url;
    return data;
  }
}

class Shop {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;

  Shop({this.id, this.isActive, this.createdAt, this.name, this.description, this.shopemail, this.shopaddress, this.shopcity, this.userid, this.image});

  Shop.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["is_active"] is bool) {
      isActive = json["is_active"];
    }
    if(json["created_At"] is String) {
      createdAt = json["created_At"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["shopemail"] is String) {
      shopemail = json["shopemail"];
    }
    if(json["shopaddress"] is String) {
      shopaddress = json["shopaddress"];
    }
    if(json["shopcity"] is String) {
      shopcity = json["shopcity"];
    }
    if(json["userid"] is String) {
      userid = json["userid"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  static List<Shop> fromList(List<Map<String, dynamic>> list) {
    return list.map(Shop.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["is_active"] = isActive;
    data["created_At"] = createdAt;
    data["name"] = name;
    data["description"] = description;
    data["shopemail"] = shopemail;
    data["shopaddress"] = shopaddress;
    data["shopcity"] = shopcity;
    data["userid"] = userid;
    data["image"] = image;
    return data;
  }
}

class Subcat {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;

  Subcat({this.id, this.type, this.salePercent, this.date, this.name});

  Subcat.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["sale_percent"] is int) {
      salePercent = json["sale_percent"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
  }

  static List<Subcat> fromList(List<Map<String, dynamic>> list) {
    return list.map(Subcat.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["type"] = type;
    data["sale_percent"] = salePercent;
    data["date"] = date;
    data["name"] = name;
    return data;
  }
}

class Categories {
  String? id;
  String? type;
  int? salePercent;
  String? date;
  String? name;
  String? image;

  Categories({this.id, this.type, this.salePercent, this.date, this.name, this.image});

  Categories.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["sale_percent"] is int) {
      salePercent = json["sale_percent"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
  }

  static List<Categories> fromList(List<Map<String, dynamic>> list) {
    return list.map(Categories.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["_id"] = id;
    data["type"] = type;
    data["sale_percent"] = salePercent;
    data["date"] = date;
    data["name"] = name;
    data["image"] = image;
    return data;
  }
}