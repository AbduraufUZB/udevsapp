class FeaturedModel {
    FeaturedModel({
        this.count,
        this.featuredLists,
    });

    String? count;
    List<FeaturedList>? featuredLists;

    factory FeaturedModel.fromJson(Map<String, dynamic> json) => FeaturedModel(
        count: json["count"],
        featuredLists: List<FeaturedList>.from(json["featured_lists"].map((x) => FeaturedList.fromJson(x))),
    );
}

class FeaturedList {
    FeaturedList({
        this.active,
        this.createdAt,
        this.description,
        this.id,
        this.lang,
        this.order,
        this.products,
        this.slug,
        this.title,
    });

    bool? active;
    String? createdAt;
    String? description;
    String? id;
    String? lang;
    String? order;
    List<Product>? products;
    String? slug;
    String? title;

    factory FeaturedList.fromJson(Map<String, dynamic> json) => FeaturedList(
        active: json["active"],
        createdAt: json["created_at"],
        description: json["description"],
        id: json["id"],
        lang: json["lang"],
        order: json["order"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        slug: json["slug"],
        title: json["title"],
    );
}

class Product {
    Product({
        this.active,
        this.brand,
        this.category,
        this.cheapestPrice,
        this.code,
        this.createdAt,
        this.externalId,
        this.id,
        this.image,
        this.inStock,
        this.name,
        this.order,
        this.previewText,
        this.price,
        this.prices,
        this.slug,
        this.updatedAt,
    });

    bool? active;
    Brand? brand;
    Category? category;
    int? cheapestPrice;
    String? code;
    String? createdAt;
    String? externalId;
    String? id;
    String? image;
    InStock? inStock;
    String? name;
    String? order;
    String? previewText;
    PurplePrice? price;
    List<PriceElement>? prices;
    String? slug;
    String? updatedAt;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        active: json["active"],
        brand: Brand.fromJson(json["brand"]),
        category: Category.fromJson(json["category"]),
        cheapestPrice: json["cheapest_price"],
        code: json["code"],
        createdAt: json["created_at"],
        externalId: json["external_id"],
        id: json["id"],
        image: json["image"],
        inStock: InStock.fromJson(json["inStock"]),
        name: json["name"],
        order: json["order"],
        previewText: json["preview_text"],
        price: PurplePrice.fromJson(json["price"]),
        prices: List<PriceElement>.from(json["prices"].map((x) => PriceElement.fromJson(x))),
        slug: json["slug"],
        updatedAt: json["updated_at"],
    );
}

class Brand {
    Brand({
        this.active,
        this.createdAt,
        this.description,
        this.id,
        this.image,
        this.name,
        this.previewText,
        this.slug,
        this.updatedAt,
        this.order,
        this.tradeInImage,
    });

    bool? active;
    String? createdAt;
    String? description;
    String? id;
    String? image;
    String? name;
    String? previewText;
    String? slug;
    String? updatedAt;
    String? order;
    String? tradeInImage;

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        active: json["active"],
        createdAt: json["created_at"],
        description: json["description"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        previewText: json["preview_text"] == null ? null : json["preview_text"],
        slug: json["slug"],
        updatedAt: json["updated_at"],
        order: json["order"] == null ? null : json["order"],
        tradeInImage: json["trade_in_image"] == null ? null : json["trade_in_image"],
    );
}

class Category {
    Category({
        this.active,
        this.id,
        this.image,
        this.name,
        this.order,
        this.parent,
        this.slug,
    });

    bool? active;
    String? id;
    String? image;
    String? name;
    String? order;
    Brand? parent;
    String? slug;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        active: json["active"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        order: json["order"],
        parent: Brand.fromJson(json["parent"]),
        slug: json["slug"],
    );
}

class InStock {
    InStock({
        this.samarkand,
        this.tashkentCity,
    });

    bool? samarkand;
    bool? tashkentCity;

    factory InStock.fromJson(Map<String, dynamic> json) => InStock(
        samarkand: json["samarkand"],
        tashkentCity: json["tashkent_city"],
    );
}

class PurplePrice {
    PurplePrice({
        this.oldPrice,
        this.price,
        this.secondPrice,
        this.secondUzsPrice,
        this.uzsPrice,
    });

    int? oldPrice;
    int? price;
    int? secondPrice;
    int? secondUzsPrice;
    int? uzsPrice;

    factory PurplePrice.fromJson(Map<String, dynamic> json) => PurplePrice(
        oldPrice: json["old_price"],
        price: json["price"],
        secondPrice: json["second_price"],
        secondUzsPrice: json["second_uzs_price"],
        uzsPrice: json["uzs_price"],
    );
}

class PriceElement {
    PriceElement({
        this.id,
        this.oldPrice,
        this.price,
        this.secondPrice,
        this.type,
    });

    String? id;
    int? oldPrice;
    int? price;
    int? secondPrice;
    String? type;

    factory PriceElement.fromJson(Map<String, dynamic> json) => PriceElement(
        id: json["id"],
        oldPrice: json["old_price"],
        price: json["price"],
        secondPrice: json["second_price"],
        type: json["type"],
    );
}
