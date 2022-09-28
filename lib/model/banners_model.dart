class BannersModel {
    BannersModel({
        this.banners,
        this.count,
    });

    List<Banner>? banners;
    String? count;

    factory BannersModel.fromJson(Map<String, dynamic> json) => BannersModel(
        banners: List<Banner>.from(json["banners"].map((x) => Banner.fromJson(x))),
        count: json["count"],
    );
}

class Banner {
    Banner({
        this.active,
        this.buttonTitle,
        this.description,
        this.id,
        this.image,
        this.lang,
        this.orderNumber,
        this.position,
        this.price,
        this.slug,
        this.title,
        this.type,
        this.url,
    });

    bool? active;
    String? buttonTitle;
    String? description;
    String? id;
    String? image;
    String? lang;
    int? orderNumber;
    Position? position;
    int? price;
    String? slug;
    String? title;
    String? type;
    String? url;

    factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        active: json["active"],
        buttonTitle: json["button_title"],
        description: json["description"],
        id: json["id"],
        image: json["image"],
        lang: json["lang"],
        orderNumber: json["order_number"],
        position: Position.fromJson(json["position"]),
        price: json["price"],
        slug: json["slug"],
        title: json["title"],
        type: json["type"],
        url: json["url"],
    );
}

class Position {
    Position({
        this.active,
        this.createdAt,
        this.description,
        this.id,
        this.size,
        this.slug,
        this.title,
        this.updatedAt,
    });

    bool? active;
    String? createdAt;
    String? description;
    String? id;
    String? size;
    String? slug;
    String? title;
    String? updatedAt;

    factory Position.fromJson(Map<String, dynamic> json) => Position(
        active: json["active"],
        createdAt: json["created_at"],
        description: json["description"],
        id: json["id"],
        size: json["size"],
        slug: json["slug"],
        title: json["title"],
        updatedAt: json["updated_at"],
    );
}
