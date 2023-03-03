

/// id : 54
/// ver_category_uz : "Asosiy"
/// ver_category_ru : "ru"
/// ver_category_en : ""
/// photo : "http://admin.nsumt.uz/public/public/icons/1755642512933952.png"
/// versubcategory_uz : [{"id":11,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Universitet haqida","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":"","updated_at":""},{"id":12,"ver_category_uz":"Asosiy","sub_vercategory_uz":"NDKTU rivojlanish strategiyasi","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":13,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Asosiy me'yoriy hujjatlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":14,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Vasiylik kengashi","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":15,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Raqamlar va faktlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":16,"ver_category_uz":"Asosiy","sub_vercategory_uz":"NDKTU reytinglari","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":17,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Missiya","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":19,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Universitet kengashi","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":20,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Litsenziya va sertifikatlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":21,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Moliyaviy faoliyat","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":22,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Bo'sh ish o`rinlari","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":23,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Interaktiv xizmatlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":24,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Tenderlar va tanlovlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":25,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Xizmat ko'rsatish","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null},{"id":26,"ver_category_uz":"Asosiy","sub_vercategory_uz":"Rekvizitlar","sub_vercategory_ru":"ru","sub_vercategory_en":"eng","created_at":null,"updated_at":null}]

class VerCategories {
  VerCategories({
      num? id, 
      String? verCategoryUz, 
      String? verCategoryRu, 
      String? verCategoryEn, 
      String? photo, 
      List<VersubcategoryUz>? versubcategoryUz,}){
    _id = id;
    _verCategoryUz = verCategoryUz;
    _verCategoryRu = verCategoryRu;
    _verCategoryEn = verCategoryEn;
    _photo = photo;
    _versubcategoryUz = versubcategoryUz;
}

  VerCategories.fromJson(dynamic json) {
    _id = json['id'];
    _verCategoryUz = json['ver_category_uz'];
    _verCategoryRu = json['ver_category_ru'];
    _verCategoryEn = json['ver_category_en'];
    _photo = json['photo'];
    if (json['versubcategory_uz'] != null) {
      _versubcategoryUz = [];
      json['versubcategory_uz'].forEach((v) {
        _versubcategoryUz?.add(VersubcategoryUz.fromJson(v));
      });
    }
  }
  num? _id;
  String? _verCategoryUz;
  String? _verCategoryRu;
  String? _verCategoryEn;
  String? _photo;
  List<VersubcategoryUz>? _versubcategoryUz;
VerCategories copyWith({  num? id,
  String? verCategoryUz,
  String? verCategoryRu,
  String? verCategoryEn,
  String? photo,
  List<VersubcategoryUz>? versubcategoryUz,
}) => VerCategories(  id: id ?? _id,
  verCategoryUz: verCategoryUz ?? _verCategoryUz,
  verCategoryRu: verCategoryRu ?? _verCategoryRu,
  verCategoryEn: verCategoryEn ?? _verCategoryEn,
  photo: photo ?? _photo,
  versubcategoryUz: versubcategoryUz ?? _versubcategoryUz,
);
  num? get id => _id;
  String? get verCategoryUz => _verCategoryUz;
  String? get verCategoryRu => _verCategoryRu;
  String? get verCategoryEn => _verCategoryEn;
  String? get photo => _photo;
  List<VersubcategoryUz>? get versubcategoryUz => _versubcategoryUz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ver_category_uz'] = _verCategoryUz;
    map['ver_category_ru'] = _verCategoryRu;
    map['ver_category_en'] = _verCategoryEn;
    map['photo'] = _photo;
    if (_versubcategoryUz != null) {
      map['versubcategory_uz'] = _versubcategoryUz?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 11
/// ver_category_uz : "Asosiy"
/// sub_vercategory_uz : "Universitet haqida"
/// sub_vercategory_ru : "ru"
/// sub_vercategory_en : "eng"
/// created_at : ""
/// updated_at : ""

class VersubcategoryUz {
  VersubcategoryUz({
      num? id, 
      String? verCategoryUz, 
      String? subVercategoryUz, 
      String? subVercategoryRu, 
      String? subVercategoryEn, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _verCategoryUz = verCategoryUz;
    _subVercategoryUz = subVercategoryUz;
    _subVercategoryRu = subVercategoryRu;
    _subVercategoryEn = subVercategoryEn;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  VersubcategoryUz.fromJson(dynamic json) {
    _id = json['id'];
    _verCategoryUz = json['ver_category_uz'];
    _subVercategoryUz = json['sub_vercategory_uz'];
    _subVercategoryRu = json['sub_vercategory_ru'];
    _subVercategoryEn = json['sub_vercategory_en'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _verCategoryUz;
  String? _subVercategoryUz;
  String? _subVercategoryRu;
  String? _subVercategoryEn;
  String? _createdAt;
  String? _updatedAt;
VersubcategoryUz copyWith({  num? id,
  String? verCategoryUz,
  String? subVercategoryUz,
  String? subVercategoryRu,
  String? subVercategoryEn,
  String? createdAt,
  String? updatedAt,
}) => VersubcategoryUz(  id: id ?? _id,
  verCategoryUz: verCategoryUz ?? _verCategoryUz,
  subVercategoryUz: subVercategoryUz ?? _subVercategoryUz,
  subVercategoryRu: subVercategoryRu ?? _subVercategoryRu,
  subVercategoryEn: subVercategoryEn ?? _subVercategoryEn,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get verCategoryUz => _verCategoryUz;
  String? get subVercategoryUz => _subVercategoryUz;
  String? get subVercategoryRu => _subVercategoryRu;
  String? get subVercategoryEn => _subVercategoryEn;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['ver_category_uz'] = _verCategoryUz;
    map['sub_vercategory_uz'] = _subVercategoryUz;
    map['sub_vercategory_ru'] = _subVercategoryRu;
    map['sub_vercategory_en'] = _subVercategoryEn;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}