class News {
  News({
      this.id, 
      this.img, 
      this.titleUz, 
      this.titleRu, 
      this.titleEng, 
      this.captionUz, 
      this.captionRu, 
      this.captionEng, 
      this.type, 
      this.updateAt, 
      this.updatedAt,});

  News.fromJson(dynamic json) {
    id = json['id'];
    img = json['img'];
    titleUz = json['title_uz'];
    titleRu = json['title_ru'];
    titleEng = json['title_eng'];
    captionUz = json['caption_uz'];
    captionRu = json['caption_ru'];
    captionEng = json['caption_eng'];
    type = json['type'];
    updateAt = json['update_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? img;
  String? titleUz;
  String? titleRu;
  String? titleEng;
  String? captionUz;
  String? captionRu;
  String? captionEng;
  String? type;
  String? updateAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['img'] = img;
    map['title_uz'] = titleUz;
    map['title_ru'] = titleRu;
    map['title_eng'] = titleEng;
    map['caption_uz'] = captionUz;
    map['caption_ru'] = captionRu;
    map['caption_eng'] = captionEng;
    map['type'] = type;
    map['update_at'] = updateAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}