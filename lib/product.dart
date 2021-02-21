// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.purchasePrice,
    this.supplierId,
    this.supplierSku,
    this.atumControlled,
    this.outStockDate,
    this.outStockThreshold,
    this.inheritable,
    this.inboundStock,
    this.stockOnHold,
    this.soldToday,
    this.salesLastDays,
    this.reservedStock,
    this.customerReturns,
    this.warehouseDamage,
    this.lostInPost,
    this.otherLogs,
    this.outStockDays,
    this.lostSales,
    this.hasLocation,
    this.updateDate,
    this.atumLocations,
    this.atumStockStatus,
    this.lowStock,
    this.links,
  });

  int id;
  String name;
  String slug;
  String permalink;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  Type type;
  Status status;
  bool featured;
  CatalogVisibility catalogVisibility;
  String description;
  String shortDescription;
  String sku;
  String price;
  String regularPrice;
  String salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  String priceHtml;
  bool onSale;
  bool purchasable;
  int totalSales;
  bool virtual;
  bool downloadable;
  List<dynamic> downloads;
  int downloadLimit;
  int downloadExpiry;
  String externalUrl;
  String buttonText;
  TaxStatus taxStatus;
  String taxClass;
  bool manageStock;
  dynamic stockQuantity;
  StockStatus stockStatus;
  Backorders backorders;
  bool backordersAllowed;
  bool backordered;
  bool soldIndividually;
  String weight;
  Dimensions dimensions;
  bool shippingRequired;
  bool shippingTaxable;
  String shippingClass;
  int shippingClassId;
  bool reviewsAllowed;
  String averageRating;
  int ratingCount;
  List<int> relatedIds;
  List<dynamic> upsellIds;
  List<dynamic> crossSellIds;
  int parentId;
  String purchaseNote;
  List<Category> categories;
  List<Category> tags;
  List<Images> images;
  List<Attribute> attributes;
  List<dynamic> defaultAttributes;
  List<dynamic> variations;
  List<dynamic> groupedProducts;
  int menuOrder;
  List<MetaDatum> metaData;
  dynamic purchasePrice;
  dynamic supplierId;
  String supplierSku;
  bool atumControlled;
  dynamic outStockDate;
  dynamic outStockThreshold;
  bool inheritable;
  dynamic inboundStock;
  dynamic stockOnHold;
  dynamic soldToday;
  dynamic salesLastDays;
  dynamic reservedStock;
  dynamic customerReturns;
  dynamic warehouseDamage;
  dynamic lostInPost;
  dynamic otherLogs;
  dynamic outStockDays;
  dynamic lostSales;
  bool hasLocation;
  DateTime updateDate;
  List<dynamic> atumLocations;
  StockStatus atumStockStatus;
  bool lowStock;
  Links links;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    permalink: json["permalink"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
    dateModified: DateTime.parse(json["date_modified"]),
    dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
    type: typeValues.map[json["type"]],
    status: statusValues.map[json["status"]],
    featured: json["featured"],
    catalogVisibility: catalogVisibilityValues.map[json["catalog_visibility"]],
    description: json["description"],
    shortDescription: json["short_description"],
    sku: json["sku"],
    price: json["price"],
    regularPrice: json["regular_price"],
    salePrice: json["sale_price"],
    dateOnSaleFrom: json["date_on_sale_from"],
    dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
    dateOnSaleTo: json["date_on_sale_to"],
    dateOnSaleToGmt: json["date_on_sale_to_gmt"],
    priceHtml: json["price_html"],
    onSale: json["on_sale"],
    purchasable: json["purchasable"],
    totalSales: json["total_sales"],
    virtual: json["virtual"],
    downloadable: json["downloadable"],
    downloads: List<dynamic>.from(json["downloads"].map((x) => x)),
    downloadLimit: json["download_limit"],
    downloadExpiry: json["download_expiry"],
    externalUrl: json["external_url"],
    buttonText: json["button_text"],
    taxStatus: taxStatusValues.map[json["tax_status"]],
    taxClass: json["tax_class"],
    manageStock: json["manage_stock"],
    stockQuantity: json["stock_quantity"],
    stockStatus: stockStatusValues.map[json["stock_status"]],
    backorders: backordersValues.map[json["backorders"]],
    backordersAllowed: json["backorders_allowed"],
    backordered: json["backordered"],
    soldIndividually: json["sold_individually"],
    weight: json["weight"],
    dimensions: Dimensions.fromJson(json["dimensions"]),
    shippingRequired: json["shipping_required"],
    shippingTaxable: json["shipping_taxable"],
    shippingClass: json["shipping_class"],
    shippingClassId: json["shipping_class_id"],
    reviewsAllowed: json["reviews_allowed"],
    averageRating: json["average_rating"],
    ratingCount: json["rating_count"],
    relatedIds: List<int>.from(json["related_ids"].map((x) => x)),
    upsellIds: List<dynamic>.from(json["upsell_ids"].map((x) => x)),
    crossSellIds: List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
    parentId: json["parent_id"],
    purchaseNote: json["purchase_note"],
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    tags: List<Category>.from(json["tags"].map((x) => Category.fromJson(x))),
    images: List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
    attributes: List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    defaultAttributes: List<dynamic>.from(json["default_attributes"].map((x) => x)),
    variations: List<dynamic>.from(json["variations"].map((x) => x)),
    groupedProducts: List<dynamic>.from(json["grouped_products"].map((x) => x)),
    menuOrder: json["menu_order"],
    metaData: List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
    purchasePrice: json["purchase_price"],
    supplierId: json["supplier_id"],
    supplierSku: json["supplier_sku"],
    atumControlled: json["atum_controlled"],
    outStockDate: json["out_stock_date"],
    outStockThreshold: json["out_stock_threshold"],
    inheritable: json["inheritable"],
    inboundStock: json["inbound_stock"],
    stockOnHold: json["stock_on_hold"],
    soldToday: json["sold_today"],
    salesLastDays: json["sales_last_days"],
    reservedStock: json["reserved_stock"],
    customerReturns: json["customer_returns"],
    warehouseDamage: json["warehouse_damage"],
    lostInPost: json["lost_in_post"],
    otherLogs: json["other_logs"],
    outStockDays: json["out_stock_days"],
    lostSales: json["lost_sales"],
    hasLocation: json["has_location"] == null ? null : json["has_location"],
    updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
    atumLocations: List<dynamic>.from(json["atum_locations"].map((x) => x)),
    atumStockStatus: stockStatusValues.map[json["atum_stock_status"]],
    lowStock: json["low_stock"],
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "permalink": permalink,
    "date_created": dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt.toIso8601String(),
    "type": typeValues.reverse[type],
    "status": statusValues.reverse[status],
    "featured": featured,
    "catalog_visibility": catalogVisibilityValues.reverse[catalogVisibility],
    "description": description,
    "short_description": shortDescription,
    "sku": sku,
    "price": price,
    "regular_price": regularPrice,
    "sale_price": salePrice,
    "date_on_sale_from": dateOnSaleFrom,
    "date_on_sale_from_gmt": dateOnSaleFromGmt,
    "date_on_sale_to": dateOnSaleTo,
    "date_on_sale_to_gmt": dateOnSaleToGmt,
    "price_html": priceHtml,
    "on_sale": onSale,
    "purchasable": purchasable,
    "total_sales": totalSales,
    "virtual": virtual,
    "downloadable": downloadable,
    "downloads": List<dynamic>.from(downloads.map((x) => x)),
    "download_limit": downloadLimit,
    "download_expiry": downloadExpiry,
    "external_url": externalUrl,
    "button_text": buttonText,
    "tax_status": taxStatusValues.reverse[taxStatus],
    "tax_class": taxClass,
    "manage_stock": manageStock,
    "stock_quantity": stockQuantity,
    "stock_status": stockStatusValues.reverse[stockStatus],
    "backorders": backordersValues.reverse[backorders],
    "backorders_allowed": backordersAllowed,
    "backordered": backordered,
    "sold_individually": soldIndividually,
    "weight": weight,
    "dimensions": dimensions.toJson(),
    "shipping_required": shippingRequired,
    "shipping_taxable": shippingTaxable,
    "shipping_class": shippingClass,
    "shipping_class_id": shippingClassId,
    "reviews_allowed": reviewsAllowed,
    "average_rating": averageRating,
    "rating_count": ratingCount,
    "related_ids": List<dynamic>.from(relatedIds.map((x) => x)),
    "upsell_ids": List<dynamic>.from(upsellIds.map((x) => x)),
    "cross_sell_ids": List<dynamic>.from(crossSellIds.map((x) => x)),
    "parent_id": parentId,
    "purchase_note": purchaseNote,
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
    "default_attributes": List<dynamic>.from(defaultAttributes.map((x) => x)),
    "variations": List<dynamic>.from(variations.map((x) => x)),
    "grouped_products": List<dynamic>.from(groupedProducts.map((x) => x)),
    "menu_order": menuOrder,
    "meta_data": List<dynamic>.from(metaData.map((x) => x.toJson())),
    "purchase_price": purchasePrice,
    "supplier_id": supplierId,
    "supplier_sku": supplierSku,
    "atum_controlled": atumControlled,
    "out_stock_date": outStockDate,
    "out_stock_threshold": outStockThreshold,
    "inheritable": inheritable,
    "inbound_stock": inboundStock,
    "stock_on_hold": stockOnHold,
    "sold_today": soldToday,
    "sales_last_days": salesLastDays,
    "reserved_stock": reservedStock,
    "customer_returns": customerReturns,
    "warehouse_damage": warehouseDamage,
    "lost_in_post": lostInPost,
    "other_logs": otherLogs,
    "out_stock_days": outStockDays,
    "lost_sales": lostSales,
    "has_location": hasLocation == null ? null : hasLocation,
    "update_date": updateDate == null ? null : updateDate.toIso8601String(),
    "atum_locations": List<dynamic>.from(atumLocations.map((x) => x)),
    "atum_stock_status": stockStatusValues.reverse[atumStockStatus],
    "low_stock": lowStock,
    "_links": links.toJson(),
  };
}

class Attribute {
  Attribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
    this.optionIds,
  });

  int id;
  Name name;
  int position;
  bool visible;
  bool variation;
  List<String> options;
  List<dynamic> optionIds;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    id: json["id"],
    name: nameValues.map[json["name"]],
    position: json["position"],
    visible: json["visible"],
    variation: json["variation"],
    options: List<String>.from(json["options"].map((x) => x)),
    optionIds: List<dynamic>.from(json["option_ids"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameValues.reverse[name],
    "position": position,
    "visible": visible,
    "variation": variation,
    "options": List<dynamic>.from(options.map((x) => x)),
    "option_ids": List<dynamic>.from(optionIds.map((x) => x)),
  };
}

enum Name { TYPE, FLAVOR, WEIGHT }

final nameValues = EnumValues({
  "Flavor": Name.FLAVOR,
  "Type": Name.TYPE,
  "Weight": Name.WEIGHT
});

enum OptionIdEnum { PASTE_CREAM, PASTE_GEL }

final optionIdEnumValues = EnumValues({
  "Paste Cream": OptionIdEnum.PASTE_CREAM,
  "Paste Gel": OptionIdEnum.PASTE_GEL
});

enum StockStatus { INSTOCK, OUTOFSTOCK, ONBACKORDER }

final stockStatusValues = EnumValues({
  "instock": StockStatus.INSTOCK,
  "onbackorder": StockStatus.ONBACKORDER,
  "outofstock": StockStatus.OUTOFSTOCK
});

enum Backorders { NO }

final backordersValues = EnumValues({
  "no": Backorders.NO
});

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues = EnumValues({
  "visible": CatalogVisibility.VISIBLE
});

class Category {
  Category({
    this.id,
    this.name,
    this.slug,
  });

  int id;
  String name;
  String slug;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  String length;
  String width;
  String height;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    length: json["length"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "width": width,
    "height": height,
  };
}

class Images {
  Images({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  int id;
  DateTime dateCreated;
  DateTime dateCreatedGmt;
  DateTime dateModified;
  DateTime dateModifiedGmt;
  String src;
  String name;
  String alt;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    id: json["id"],
    dateCreated: DateTime.parse(json["date_created"]),
    dateCreatedGmt: DateTime.parse(json["date_created_gmt"]),
    dateModified: DateTime.parse(json["date_modified"]),
    dateModifiedGmt: DateTime.parse(json["date_modified_gmt"]),
    src: json["src"],
    name: json["name"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date_created": dateCreated.toIso8601String(),
    "date_created_gmt": dateCreatedGmt.toIso8601String(),
    "date_modified": dateModified.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt.toIso8601String(),
    "src": src,
    "name": name,
    "alt": alt,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
    this.up,
  });

  List<Collection> self;
  List<Collection> collection;
  List<Collection> up;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
    collection: List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
    up: json["up"] == null ? null : List<Collection>.from(json["up"].map((x) => Collection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": List<dynamic>.from(self.map((x) => x.toJson())),
    "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
    "up": up == null ? null : List<dynamic>.from(up.map((x) => x.toJson())),
  };
}

class Collection {
  Collection({
    this.href,
  });

  String href;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class MetaDatum {
  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  int id;
  String key;
  String value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
    id: json["id"],
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": key,
    "value": value,
  };
}

enum Status { DRAFT, PUBLISH }

final statusValues = EnumValues({
  "draft": Status.DRAFT,
  "publish": Status.PUBLISH
});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({
  "taxable": TaxStatus.TAXABLE
});

enum Type { SIMPLE }

final typeValues = EnumValues({
  "simple": Type.SIMPLE
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
