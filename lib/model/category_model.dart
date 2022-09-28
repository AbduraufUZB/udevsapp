class CategoriesModel {
    CategoriesModel({
        this.categories,
        this.count,
    });

    List<CategoryElement>? categories;
    String? count;

    factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
        categories: List<CategoryElement>.from(json["categories"].map((x) => CategoryElement.fromJson(x))),
        count: json["count"],
    );
}

class CategoryElement {
    CategoryElement({
        this.active,
        this.children,
        this.description,
        this.id,
        this.image,
        this.name,
        this.order,
        this.products,
        this.slug,
        this.tradeInImage,
        this.wide,
    });

    bool? active;
    dynamic children;
    String? description;
    String? id;
    String? image;
    String? name;
    String? order;
    dynamic products;
    String? slug;
    String? tradeInImage;
    bool? wide;

    factory CategoryElement.fromJson(Map<String, dynamic> json) => CategoryElement(
        active: json["active"],
        children: json["children"],
        description: json["description"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        order: json["order"],
        products: json["products"],
        slug: json["slug"],
        tradeInImage: json["trade_in_image"],
        wide: json["wide"],
    );
}

class ProductCategory {
    ProductCategory({
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
    dynamic parent;
    String? slug;

    factory ProductCategory.fromJson(Map<String, dynamic> json) => ProductCategory(
        active: json["active"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        order: json["order"],
        parent: json["parent"],
        slug: json["slug"],
    );
}