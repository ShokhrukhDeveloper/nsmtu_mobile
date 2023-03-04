class VerCategory {
  VerCategory({
      this.id, 
      this.verCategoryUz, 
      this.verCategoryRu, 
      this.verCategoryEn, 
      this.photo, 
      this.versubcategoryUz,});

  VerCategory.fromJson(dynamic json) {
    id = json['id'];
    verCategoryUz = json['ver_category_uz'];
    verCategoryRu = json['ver_category_ru'];
    verCategoryEn = json['ver_category_en'];
    photo = json['photo'];
    if (json['versubcategory_uz'] != null) {
      versubcategoryUz = [];
      json['versubcategory_uz'].forEach((v) {
        versubcategoryUz?.add(VersubcategoryUz.fromJson(v));
      });
    }
  }
  num? id;
  String? verCategoryUz;
  String? verCategoryRu;
  dynamic verCategoryEn;
  String? photo;
  List<VersubcategoryUz>? versubcategoryUz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ver_category_uz'] = verCategoryUz;
    map['ver_category_ru'] = verCategoryRu;
    map['ver_category_en'] = verCategoryEn;
    map['photo'] = photo;
    if (versubcategoryUz != null) {
      map['versubcategory_uz'] = versubcategoryUz?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class VersubcategoryUz {
  VersubcategoryUz({
      this.id, 
      this.verCategoryUz, 
      this.subVercategoryUz, 
      this.subVercategoryRu, 
      this.subVercategoryEn, 
      this.createdAt, 
      this.updatedAt,});

  VersubcategoryUz.fromJson(dynamic json) {
    id = json['id'];
    verCategoryUz = json['ver_category_uz'];
    subVercategoryUz = json['sub_vercategory_uz'];
    subVercategoryRu = json['sub_vercategory_ru'];
    subVercategoryEn = json['sub_vercategory_en'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? verCategoryUz;
  String? subVercategoryUz;
  String? subVercategoryRu;
  String? subVercategoryEn;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ver_category_uz'] = verCategoryUz;
    map['sub_vercategory_uz'] = subVercategoryUz;
    map['sub_vercategory_ru'] = subVercategoryRu;
    map['sub_vercategory_en'] = subVercategoryEn;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}